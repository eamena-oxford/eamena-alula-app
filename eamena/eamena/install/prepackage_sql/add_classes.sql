INSERT INTO ontology.classes VALUES ('S15', 'State', true);
INSERT INTO ontology.classes VALUES ('S16', 'Observable Entity', true);
INSERT INTO ontology.classes VALUES ('I1', 'Argumentation', true);
INSERT INTO ontology.classes VALUES ('E94', 'Primitive Value', true);
INSERT INTO ontology.classes VALUES ('E100', 'Activity Plan', true);
INSERT INTO ontology.classes VALUES ('S4', 'Observation', true);
INSERT INTO ontology.classes VALUES ('S9', 'Property Type', true);
INSERT INTO ontology.classes VALUES ('I5', 'Inference Making', true);
INSERT INTO ontology.classes VALUES ('I2', 'Interpretation Belief', true);
INSERT INTO ontology.classes VALUES ('I4', 'Proposition Set', true);
INSERT INTO ontology.classes VALUES ('I6', 'Belief Value', true);
INSERT INTO ontology.classes VALUES ('SP6', 'Declarative Place', true);	
INSERT INTO ontology.classes VALUES ('SP5', 'Geometric Place Expression', true);
INSERT INTO ontology.classes VALUES ('SP4', 'Spatial Coordinate Reference System', true);
INSERT INTO ontology.classes VALUES ('SP15', 'Observable Entity', true);
INSERT INTO ontology.classes VALUES ('SP16', 'State', true);
INSERT INTO ontology.classes VALUES ('XX1', 'Potential State Prediction', true);
INSERT INTO ontology.classes VALUES ('XX2', 'Risk Prediction Evaluation', true);
INSERT INTO ontology.classes VALUES ('B2', 'Morphological Building Section', true);

INSERT INTO ontology.properties VALUES ('P81a', 'E52', 'E61', 'End of the beginning');
INSERT INTO ontology.properties VALUES ('P81b', 'E53', 'E62', 'Beginning of the end');
INSERT INTO ontology.properties VALUES ('P82a', 'E54', 'E63', 'Beginning of the beginning');
INSERT INTO ontology.properties VALUES ('P82b', 'E55', 'E64', 'End of the end');
INSERT INTO ontology.properties VALUES ('-O8', 'E24', 'S4', 'Was Observed By');
INSERT INTO ontology.properties VALUES ('O8', 'S4', 'S15', 'Observed');
INSERT INTO ontology.properties VALUES ('O16', 'S4', 'I6', 'Observed Value');
INSERT INTO ontology.properties VALUES ('O9', 'S4', 'S9', 'Observed Property Type');
INSERT INTO ontology.properties VALUES ('-O14', 'S16', 'E5', 'Is Initialized By');
INSERT INTO ontology.properties VALUES ('O13', 'E5', 'E5', 'Triggers');
INSERT INTO ontology.properties VALUES ('J1', 'I5', 'I2', 'Used as premise');
INSERT INTO ontology.properties VALUES ('J4', 'I2', 'I4', 'That');
INSERT INTO ontology.properties VALUES ('J5', 'I2', 'I6', 'Holds to be');
INSERT INTO ontology.properties VALUES ('J2', 'I1', 'I2', 'Concluded that');
INSERT INTO ontology.properties VALUES ('-Q11', 'E53', 'SP6', 'Is approximated by');
INSERT INTO ontology.properties VALUES ('-Q10', 'SP6', 'E94', 'Is defined place by');
INSERT INTO ontology.properties VALUES ('Q9', 'E94', 'SP4', 'Is expressed in terms of');
INSERT INTO ontology.properties VALUES ('YY1', 'E14', 'XX1', 'predicts');
INSERT INTO ontology.properties VALUES ('-YY2', 'XX1', 'XX2', 'Is evaluated by');
INSERT INTO ontology.properties VALUES ('-YY3', 'XX1', 'E5', 'Would be produced by');

-- Add the following missing properties in order to load 3-tier graphs.
-- The values below should be inspected and in some case must be updated.
INSERT INTO ontology.properties VALUES ('O14', 'S16', 'E5', '<needs to be updated>');
INSERT INTO ontology.properties VALUES ('YY2', 'S16', 'E5', '<needs to be updated>');
INSERT INTO ontology.properties VALUES ('YY3', 'S16', 'E5', '<needs to be updated>');
