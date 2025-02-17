PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>  # Fixed incorrect xsd prefix
PREFIX bfo: <http://purl.obolibrary.org/obo/>
PREFIX iof: <https://spec.industrialontologies.org/ontology/core/Core/>
PREFIX time: <http://www.w3.org/2006/time#>
PREFIX ns: <http://www.example.com/>
PREFIX ns1: <http://www.example.com/data/>

INSERT DATA {
    ns1:ontocommons-project a bfo:Process ;
                             bfo:occupiesTemporalRegion ns1:oc-project-interval .

    ns1:oc-project-interval a bfo:TemporalInterval .

    ns1:oc-project-duration1 a time:DurationDescription ;
                              iof:isValueExpressionOfAtAllTimes ns1:oc-project-interval ;
                              time:years "3"^^xsd:decimal ;
                              time:months "8"^^xsd:decimal ;
                              time:days "2"^^xsd:decimal .

    ns1:oc-project-duration2 a time:Duration ;
                              iof:isValueExpressionOfAtAllTimes ns1:oc-project-interval ;
                              time:numericDuration "1165"^^xsd:decimal ;
                              time:unitType time:unitDay .

    ns1:oc-project-duration3 a ns:FiscalQuarter ;
                              iof:isValueExpressionOfAtAllTimes ns1:oc-project-interval ;
                              ns:fiscalQuarters "12"^^xsd:decimal .
}
