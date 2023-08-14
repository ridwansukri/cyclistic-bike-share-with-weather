import os
import zipfile
import boto3
from urllib.request import urlopen
from io import BytesIO

def lambda_handler(event, context):
    s3 = boto3.resource('s3')
    bucket_name = 'cyclistic-extraction-bucket'  # S3 bucket name
    url_file_name = 'urls.txt'  # The file containing the URLs

    # Download the file containing the URLs
    url_file_object = s3.Object(bucket_name, url_file_name)
    url_file = url_file_object.get()['Body'].read().decode('utf-8')

    # Split the file into lines, each line being a URL
    urls = url_file.splitlines()

    try:
        for url in urls:
            with urlopen(url) as zipresp:
                with zipfile.ZipFile(BytesIO(zipresp.read())) as zfile:
                    for file in zfile.namelist():
                        s3.meta.client.upload_fileobj(
                            zfile.open(file),
                            bucket_name,
                            file
                        )
        return {
            'statusCode': 200,
            'body': 'Extract and download process was successful!'
        }
    except ValueError as e:
        return {
            'statusCode': 500,
            'body': f'Error occurred: {str(e)}'
        }
