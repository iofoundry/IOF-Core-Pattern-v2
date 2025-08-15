PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX ns1: <http://example.org/ns1#>
PREFIX bfo: <http://purl.obolibrary.org/obo/> 
PREFIX iof: <https://spec.industrialontologies.org/ontology/core/Core/>

INSERT DATA {

    ns1:assignment-of-safety-officer a iof:GainOfRole;
        bfo:occupiesTemporalRegion ns1:assignment-interval.

    ns1:assignment-interval a bfo:BFO_0000202;
        bfo:BFO_0000222 ns1:assignment-start-time;
        bfo:BFO_0000224 ns1:assignment-end-time.
    
    ns1:assignment-start-time a bfo:BFO_0000203;
        iof:hasValueExpressionAtAllTimes ns1:assignment-start-time-value.

    ns1:assignment-end-time a bfo:TemporalInstant;
        iof:hasValueExpressionAtAllTimes ns1:assignment-end-time-value. 

    ns1:assignment-start-time-value iof:hasDateTimeInstantValue "2024-05-01T00:00:00Z"^^xsd:dateTime.
    ns1:assignment-end-time-value iof:hasDateTimeInstantValue "2024-05-06T00:00:00Z"^^xsd:dateTime.

    ns1:termination-of-safety-officer a iof:GainOfRole;  # Check if this should be LossOfRole
        bfo:occupiesTemporalRegion ns1:termination-interval.

    ns1:termination-interval a bfo:BFO_0000202;
        bfo:BFO_0000222 ns1:termination-start-time;
        bfo:BFO_0000224 ns1:termination-end-time.
    
    ns1:termination-start-time a bfo:BFO_0000203;
        iof:hasValueExpressionAtAllTimes ns1:termination-start-time-value.

    ns1:termination-end-time a bfo:TemporalInstant;
        iof:hasValueExpressionAtAllTimes ns1:termination-end-time-value. 

    ns1:termination-start-time-value iof:hasDateTimeInstantValue "2025-03-31T00:00:00Z"^^xsd:dateTime.
    ns1:termination-end-time-value iof:hasDateTimeInstantValue "2025-04-04T00:00:00Z"^^xsd:dateTime.
}