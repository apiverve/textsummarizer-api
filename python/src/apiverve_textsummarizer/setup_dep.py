from setuptools import setup, find_packages

setup(
    name='apiverve_textsummarizer',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Text Summarizer condenses raw text into concise summaries of a specified sentence count. Pass up to 5,000 characters to extract key points into readable summaries, with paid plans adding word counts and reduction metrics.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/textsummarizer?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
