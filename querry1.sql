select Country.CountryID, Country.Name, Sum(Population) as Country_Population from XF.Country
    join XF.City on Country.CountryID = City.CountryID
    group by Country.CountryID, Country.Name
    having Sum(Population) > 400;
