select Country.Name as Country_Name from XF.Country
    minus
    select unique Country.Name from XF.Country
    join XF.City on Country.CountryID = City.CountryID
    left join XF.Building on City.CityID = Building.CityID
    where BuildingID is not null;
