PREFIX : <http://example.com/data/>
PREFIX bfo: <http://purl.obolibrary.org/obo/>
PREFIX iof: <https://spec.industrialontologies.org/ontology/core/Core/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX ns1: <http://example.com/data/>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
INSERT DATA {
    # Class assertions
    ns1:ge-aerospace rdf:type iof:Organization, iof:BusinessOrganization .
    ns1:ge-manufacturer rdf:type iof:Manufacturer .
    ns1:jet-engine-selling-function rdf:type iof:BusinessFunction .
    ns1:jet-engine-selling-process rdf:type iof:SellingBusinessProcess .
    ns1:jet-engine-production-role rdf:type iof:ManufacturerRole .
    ns1:jet-engine-production-process rdf:type iof:ProductProductionProcess .
    ns1:jet-engine rdf:type iof:MaterialProduct .

    # Subclass
    iof:BusinessOrganization rdfs:subClassOf iof:Organization .
    iof:Manufacturer rdfs:subClassOf iof:Organization .

    # Object properties
    ns1:ge-aerospace iof:hasFunction ns1:jet-engine-selling-function .
    ns1:jet-engine-selling-process bfo:realize ns1:jet-engine-selling-function .
    ns1:jet-engine-selling-process bfo:hasParticipantAtSomeTime ns1:jet-engine .
    ns1:ge-manufacturer bfo:continuantPartOfAtAllTimes ns1:ge-aerospace .
    ns1:ge-manufacturer iof:hasRole ns1:jet-engine-production-role .
    ns1:jet-engine-production-process bfo:realize ns1:jet-engine-production-role .
    ns1:jet-engine-production-process iof:hasOutput ns1:jet-engine .
}


  