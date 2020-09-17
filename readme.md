![51Degrees](https://51degrees.com/DesktopModules/FiftyOne/Distributor/Logo.ashx?utm_source=github&utm_medium=repository&utm_content=readme_main&utm_campaign=python-open-source) 
**v4 Location Python**

[Pipeline Documentation](https://51degrees.com/documentation/4.1/index.html "Complete documentation")

## Introduction

This project contains the geo-location engines for the Python implementation of the 51Degrees Pipeline API.

The Pipeline is a generic web request intelligence and data processing solution with the ability to add a range of 51Degrees and/or custom plug ins (Engines) 

## Requirements

* Python 2.7 or Python 3
* The `flask` python library to run the web examples

## Installation and Examples

### From PyPI

`pip install fiftyone_location`

You can confirm this is working with the following micro-example.

* Create a resource key for free with the 51Degrees [configurator](https://configure.51degrees.com/6CTsmbPx). This defines the properties you want to access.
* On the 'implement' page of the configurator, copy the resource key and replace YOUR_RESOURCE_KEY in the example below. Save this as examplelocation.py
* Run the example with `python examplelocation.py`
* Feel free to try different locations and property values.

```
from fiftyone_location.location_pipelinebuilder import LocationPipelineBuilder
pipeline = LocationPipelineBuilder({"resourceKey": "YOUR_RESOURCE_KEY"}).build()
fd = pipeline.create_flowdata()
fd.evidence.add("query.51D_Pos_latitude", "40.730610")
fd.evidence.add("query.51D_Pos_longitude", "-73.935242")
fd.process()
print(fd.location.town.value())
```

For more in-depth examples, check out the [examples](https://51degrees.com/documentation/4.1/_examples__reverse_geocoding__index.html) page in the documentation.

### From GitHub

If you've cloned the GitHub repository, you will be able to run the examples directly:

`python3 -m examples.cloud.gettingstarted`

To run the web example:

#### Linux

Execute `export FLASK_APP=` with the name of the web example file, then `flask run`.

#### Windows

Execute `$env:FLASK_APP = "x"` with the name of the example file, then `flask run`.
