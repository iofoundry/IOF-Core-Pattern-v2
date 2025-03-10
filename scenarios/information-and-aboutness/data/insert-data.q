PREFIX iof: <http://example.org/iof#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX ns1: <http://example.org/ns1#>

INSERT DATA {
  # Car entity
  ns1:car1 a iof:MaterialArtifact .

  # Designating a specific instance of the car (e.g., using a VIN)
  ns1:car1-vin-number a iof:Identifier ;
      iof:designates ns1:car1 ;
      rdf:value "1HGCM82633A123456" . # Example VIN

  # Denoting the model name of the car
  ns1:car1-model-name a iof:InformationContentEntity ;
      iof:denotes ns1:car1 ;
      rdf:value "Toyota Camry" .

  # Describing the car using a tagline
  ns1:car1-tagline a iof:DescriptiveInformationContentEntity ;
      iof:describes ns1:car1 ;
      rdf:value "Toyota Camry XLE 2025 – Elevate Your Drive" .

  # Prescribing regulatory classification for the car
  ns1:passenger-vehicle-specification a iof:DirectiveInformationContentEntity ;
      iof:prescribes ns1:car1 ;
      rdf:value "Gross Vehicle Weight Rating (GVWR) under 10,000 lbs" .
}