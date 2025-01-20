PREFIX bfo: <http://purl.obolibrary.org/obo/>
PREFIX iof: <https://spec.industrialontologies.org/ontology/core/Core/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX ns1: <http://example.com/data/>
INSERT {
    _:source a bfo:Site; 
                      iof:hasValueExpressionAtAllTimes ?location1; 
                      bfo:occupiesSpatialRegionAtAllTimes _:spatial-region-source.
    _:destination a bfo:Site; 
                      iof:hasValueExpressionAtAllTimes ?location2; 
                      bfo:occupiesSpatialRegionAtAllTimes _:spatial-region-destination.
    _:spatial-region-source a bfo:SpatialRegion.
    _:spatial-region-destination a bfo:SpatialRegion.
    _:temporal-instant-departure a bfo:TemporalInstant;
                      iof:hasValueExpressionAtAllTimes ?departure.
    _:temporal-instant-arrival a bfo:TemporalInstant;
                      iof:hasValueExpressionAtAllTimes ?arrival.
    _:spatio-temporal-1 a bfo:SpatioTemporalRegion;
                      bfo:temporallyProjectsOnto _:temporal-instant-departure;
                      bfo:spatiallyProjectsOntoAtAllTimes _:spatial-region-source. 
    _:spatio-temporal-2 a bfo:SpatioTemporalRegion;
                      bfo:temporallyProjectsOnto _:temporal-instant-arrival;
                      bfo:spatiallyProjectsOntoAtAllTimes _:spatial-region-destination.
    ?train a bfo:Object;
                      rdfs:label "BNSF Freight Train";   
                      bfo:locatedInAtSomeTime _:source;
                      bfo:locatedInAtSomeTime _:destination;
                      bfo:existsAt _:temporal-instant-departure;
                      bfo:existsAt _:temporal-instant-arrival.              
}
WHERE{
    BIND(?Train_Number as ?train).
    BIND(?Source as ?location1).
    BIND(?Destination as ?location2).
    BIND(?Departure_Time as ?departure).
    BIND(?Arrival_Time as ?arrival).
}
  
