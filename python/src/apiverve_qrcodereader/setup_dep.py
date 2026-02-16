from setuptools import setup, find_packages

setup(
    name='apiverve_qrcodereader',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='QR Code Reader is a powerful tool that extracts text and data from QR codes in images. Simply provide an image URL or upload an image containing a QR code to decode its contents.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://qrcodereader.apiverve.com?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
