
ITCAutoingest is a gem for gathering reports out of iTunes connect. It uses the ITC autoingest service to download and parse the reports and **does not** try to scrape the iTunes connect website.

For more information about ITC reports see this [pdf](http://www.apple.com/itunesnews/docs/AppStoreReportingInstructions.pdf).

## Features

* Supports Sales reports, Daily/Weekly reports and Summary/Opt-in reports (see above pdf for more information on each type of report)
* Returns report as a hash of the information in the downloaded report file
* Handy command line tool that can be used to output tab delimited information or as an example of how to use the gem

## Instructions

The command line tool uses the following syntax:

``` text
itc_autoingest <username> <password> <vendorid> <report type> <date type> <report subtype> <date>
```
* username - your itunes connect username
* password - your itunes connect password
* vendorid - your itunes connect vendor id
* report type - the only type currently supported is Sales
* date type - there are two date types supported: Daily and Weekly
* report subtype - there are two subtypes supported: Summary and Opt-In
* date - the timeframe for the report in yyyymmdd format

The gem has the following methods available:

* daily_sales_summary_report(reportdate)
* weekly_sales_summary_report(reportdate)
* daily_sales_optin_report(reportdate)
* weekly_sales_optin_report(reportdate)

A hash is returned from each of these calls and will contain a report item with an array of hashed report data or an error item that contains an error from the reporting system.

## Examples

Using the command line utility will look something like this:

``` text
itc_autoingest user pass 50050992 Sales Daily Summary 20110901
```

The following example would result in **report** being filled with a hash of report data for the given date:

``` rb
require "itc_autoingest"

itca = ITCAutoingest::ITCAutoingest.new(username, password, vendorid)
report = itca.daily_sales_summary_report('20110901')

puts report
```

## Copyright

Copyright (C) 2011 Carson McDonald - [@casron](http://twitter.com/casron)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
