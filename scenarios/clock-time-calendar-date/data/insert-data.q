PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/#>
PREFIX bfo: <http://purl.obolibrary.org/obo/>
PREFIX iof: <https://spec.industrialontologies.org/ontology/core/Core/>
PREFIX ns1: <http://www.w3.org/2001/XMLSchema#>

INSERT DATA {
    ns1:launch-of-iphone a bfo:Process;
                        bfo:occupiesTemporalRegion ns1:launch-interval.
    ns1:launch-interval a bfo:TemporalInterval;
                        iof:hasFirstInstant ns1:launch-start-time.
    ns1:launch-start-time a bfo:TemporalInstant;
                        iof:hasValueExpressionAtAllTimes ns1:instant-expression-xsd.
    ns1:instant-expression-xsd a iof:TemporalInstantValueExpression;
                        iof:hasDateTimeInstantValue "2007-06-29T18:00:00Z"^^xsd:dateTime.
}