---
title: AgencyRM.SDK
author: Tyler Vanderhoef
created: Tue May 17 2016 15:54:39 GMT-0700 (Pacific Daylight Time)
datasources:
    Test: https://api.github.com/users/joelotter/repos
original:
    title: AgencyRM.SDK
    url: file:///F:/Github/DocuSign/AgencyRM.SDK/docs/Home.html
show_footer: false
---

```javascript; auto
data.Test = [
    { name: "CRM", count: 200 },
    { name: "Tracker", count: 110 }
];

return graphs.pieChart(data.Test);
```

This is a PCL built to be shared across different platforms (including Xamarin Forms apps).

### Required NuGets on Root Project
In order to use the SDK (until the NuGet package is made), you need to install the following dependencies to your root project.

- Newtonsoft.Json (v8.0.3)
- RestSharp (built from the RestSharp.PCL project)
- DocuSign.SDK (built from the DocuSign.SDK project)
- AgencyRM.SDK (built from the AgencyRM.SDK project)

The last three items can be built individually, or they can be built using the AgencyRM.SDK solution. After they have been built, you will need to import the dll's for all of them found in the AgencyRM.SDK bin folder.

### In this SDK
-  DocuSign signature requests

### Upcoming features
-  Tracker API Services
-  Binaries wrapped in a NuGet package