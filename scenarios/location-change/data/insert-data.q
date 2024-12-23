PREFIX bfo: <http://purl.obolibrary.org/obo/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX ns1: <http://example.com/data/>
INSERT DATA {
    ns1:powder-river-basin a bfo:Site; 
                      bfo:occupiesSpatialRegionAtAllTimes ns1:spatial-region-long-beach.
    ns1:powder-river-basin a bfo:Site; 
                      bfo:occupiesSpatialRegionAtAllTimes ns1:spatial-region-powder-river-basin.
    ns1:spatial-region-long-beach a bfo:SpatialRegion.
    ns1:spatial-region-powder-river-basin a bfo:SpatialRegion.
    ns1:temporal-instant-departure a bfo:TemporalInstant.
    ns1:temporal-instant-arrival a bfo:TemporalInstant.
    ns1:spatio-temporal-1 a bfo:SpatioTemporalRegion;
                      bfo:temporallyProjectsOnto ns1:temporal-instant-powder-river-basin;
                      bfo:temporallyProjectsOnto ns1:temporal-instant-long-beach;
                      bfo:spatiallyProjectsOntoAtAllTimes ns1:spatial-region-long-beach;
                      bfo:spatiallyProjectsOntoAtAllTimes ns1:spatial-region-powder-river-basin. 
    ns1:freight-train a bfo:Object;
                      rdfs:label "BNSF Freight Train";   
                      bfo:locatedInAtSomeTime ns1:powder-river-basin;
                      bfo:locatedInAtSomeTime ns1:long-beach-port;
                      bfo:existsAt ns1:temporal-instant-powder-river-basin;
                      bfo:existsAt ns1:temporal-instant-long-beach.   
}
  
