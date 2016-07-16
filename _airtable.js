var Airtable = require('airtable');
var fs          = require('fs');
var yaml        = require('js-yaml');

function loadConfig() {
  var ymlFile = fs.readFileSync('_config.yml', 'utf8');
  return yaml.load(ymlFile);
}

var config = loadConfig().airtable;
var jsonfile = require('jsonfile');
var fileAbout = '_data/abouts.json';
var abouts = new Airtable({ apiKey: config.apikey }).base(config.abouts);
var aboutJson = [];
var aboutJsonTest = [];

var fileBlog = '_data/blog.json';
var blog = new Airtable({ apiKey: config.apikey }).base(config.blog);
var blogJson = [];
var blogJsonTest = [];

// var fileEvents = '_data/events.json';
// var events = new Airtable({ apiKey: config.apikey }).base(config.events);
// var eventsJson = [];
// var eventsJsonTest = [];

// var fileMinistries = '_data/ministries.json';
// var ministries = new Airtable({ apiKey: config.apikey }).base(config.ministries);
// var ministriesJson = [];
// var ministriesJsonTest = [];

// var filehomeMinistries = '_data/homeministries.json';
// var homeministries = new Airtable({ apiKey: config.apikey }).base(config.ministries);
// var homeministriesJson = [];
// var homeministriesJsonTest = [];

// var filePhotos = '_data/photos.json';
// var photos = new Airtable({ apiKey: config.apikey }).base(config.photos);
// var photosJson = [];
// var photosJsonTest = [];

var filesermons = '_data/sermons.json';
var sermons = new Airtable({ apiKey: config.apikey }).base(config.sermons);
var sermonsJson = [];
var sermonsJsonTest = [];

var fileseries = '_data/series.json';
var series = new Airtable({ apiKey: config.apikey }).base(config.series);
var seriesJson = [];
var seriesJsonTest = [];

var filehomeseries = '_data/homeseries.json';
var homeseries = new Airtable({ apiKey: config.apikey }).base(config.series);
var homeseriesJson = [];
var homeseriesJsonTest = [];


    abouts('Pages').select({
        maxRecords: 100,
      //sort
        sort: [{field: "title", direction: "asc"}],
        filterByFormula: "published",
      //Formula to how to get data
      // help https://support.airtable.com/hc/en-us/articles/203255215-Formula-Field-Reference

    }).eachPage(function page(records, fetchNextPage) {

        // This function (`page`) will get called for each page of records.

        records.forEach(function(record) {
          aboutJson.push(record._rawJson.fields);
          console.log('Retrieved ', record._rawJson.fields);
        });
        fetchNextPage();

    }, function done(error) {
        if (error) {
            console.log(error);
        }
      jsonfile.writeFile(fileAbout, aboutJson, function (err) {
        console.error(err)
      });
      console.log(aboutJson);
    });



// blog 

    blog('Posts').select({
        maxRecords: 100,
      //sort
        sort: [{field: "date_added", direction: "desc"}],
        filterByFormula: "published",
      //Formula to how to get data
      // help https://support.airtable.com/hc/en-us/articles/203255215-Formula-Field-Reference

    }).eachPage(function page(records, fetchNextPage) {

        // This function (`page`) will get called for each page of records.

        records.forEach(function(record) {
          blogJson.push(record._rawJson.fields);
          console.log('Retrieved ', record._rawJson.fields);
        });
        fetchNextPage();

    }, function done(error) {
        if (error) {
            console.log(error);
        }
      jsonfile.writeFile(fileBlog, blogJson, function (err) {
        console.error(err)
      });
      console.log(blogJson);
    });

    // sermons 

    sermons('sermons').select({
        maxRecords: 100,
      //sort
        filterByFormula: "published",
        sort: [{field: "date", direction: "desc"}],
      //Formula to how to get data
      // help https://support.airtable.com/hc/en-us/articles/203255215-Formula-Field-Reference

    }).eachPage(function page(records, fetchNextPage) {

        // This function (`page`) will get called for each page of records.

        records.forEach(function(record) {
          sermonsJson.push(record._rawJson.fields);
          console.log('Retrieved ', record._rawJson.fields);
        });
        fetchNextPage();

    }, function done(error) {
        if (error) {
            console.log(error);
        }
      jsonfile.writeFile(filesermons, sermonsJson, function (err) {
        console.error(err)
      });
      console.log(sermonsJson);
    });

    // series 

    series('series').select({
        maxRecords: 100,
      //sort
        filterByFormula: "published",
        sort: [{field: "sermon_date", direction: "desc"}],
      //Formula to how to get data
      // help https://support.airtable.com/hc/en-us/articles/203255215-Formula-Field-Reference

    }).eachPage(function page(records, fetchNextPage) {

        // This function (`page`) will get called for each page of records.

        records.forEach(function(record) {
          seriesJson.push(record._rawJson.fields);
          console.log('Retrieved ', record._rawJson.fields);
        });
        fetchNextPage();

    }, function done(error) {
        if (error) {
            console.log(error);
        }
      jsonfile.writeFile(fileseries, seriesJson, function (err) {
        console.error(err)
      });
      console.log(seriesJson);
    });

    // homeseries 

    homeseries('Series').select({
        maxRecords: 100,
      //sort
        filterByFormula: 'AND(published, IF(title = "No Series", 0,1))',
        sort: [{field: "sermon_date", direction: "desc"}],
      //Formula to how to get data
      // help https://support.airtable.com/hc/en-us/articles/203255215-Formula-Field-Reference

    }).eachPage(function page(records, fetchNextPage) {

        // This function (`page`) will get called for each page of records.

        records.forEach(function(record) {
          homeseriesJson.push(record._rawJson.fields);
          console.log('Retrieved ', record._rawJson.fields);
        });
        fetchNextPage();

    }, function done(error) {
        if (error) {
            console.log(error);
        }
      jsonfile.writeFile(filehomeseries, homeseriesJson, function (err) {
        console.error(err)
      });
      console.log(homeseriesJson);
    });