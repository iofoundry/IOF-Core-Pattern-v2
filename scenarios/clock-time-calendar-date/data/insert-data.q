PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/#>
PREFIX bfo: <http://purl.obolibrary.org/obo/>
PREFIX iof: <https://spec.industrialontologies.org/ontology/core/Core/>
PREFIX time: <http://www.w3.org/2006/time#>
PREFIX ns: <http://www.example.com/>
PREFIX ns1: <http://www.example.com/data/>

INSERT DATA {
    ns1:launch-of-iphone a bfo:Process;
                        bfo:occupiesTemporalRegion ns1:launch-interval.
    ns1:launch-interval a bfo:TemporalInterval;
                        iof:hasFirstInstant ns1:launch-start-time.
    ns1:launch-start-time a bfo:TemporalInstant.
    ns1:instant-expression-xsd a iof:TemporalInstantValueExpression;
                        iof:isValueExpressionOfAtAllTimes ns1:launch-start-time;
                        iof:hasDateTimeInstantValue "2007-06-29T18:00:00Z"^^xsd:dateTime.
    ns1:instant-expression-month a time:DateTimeDescription;
                        iof:isValueExpressionOfAtAllTimes ns1:launch-start-time;
                        time:month "--06"^^xsd:gMonth.
    ns1:instant-expression-dow a time:DateTimeDescription;
                        iof:isValueExpressionOfAtAllTimes ns1:launch-start-time;
                        time:dayOfWeek time:Friday.
    ns1:instant-expression-gps a ns:GPSTimeDescription;
                        iof:isValueExpressionOfAtAllTimes ns1:launch-start-time;
                        time:week "1430"^^xsd:decimal;
                        time:second "324018"^^xsd:decimal. 
}