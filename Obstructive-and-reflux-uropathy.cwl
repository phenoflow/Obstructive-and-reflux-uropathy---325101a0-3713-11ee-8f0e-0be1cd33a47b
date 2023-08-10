cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  obstructive-and-reflux-uropathy-hydronephrosis---primary:
    run: obstructive-and-reflux-uropathy-hydronephrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  obstructive-and-reflux-uropathy-hydrocalycosis---primary:
    run: obstructive-and-reflux-uropathy-hydrocalycosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-hydronephrosis---primary/output
  obstructive-and-reflux-uropathy-ureter---primary:
    run: obstructive-and-reflux-uropathy-ureter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-hydrocalycosis---primary/output
  pelviureteric-obstructive-and-reflux-uropathy---primary:
    run: pelviureteric-obstructive-and-reflux-uropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-ureter---primary/output
  obstructive-and-reflux-uropathy---primary:
    run: obstructive-and-reflux-uropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: pelviureteric-obstructive-and-reflux-uropathy---primary/output
  ureteric-obstructive-and-reflux-uropathy---primary:
    run: ureteric-obstructive-and-reflux-uropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy---primary/output
  obstructive-and-reflux-uropathy-unspecified---primary:
    run: obstructive-and-reflux-uropathy-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ureteric-obstructive-and-reflux-uropathy---primary/output
  other-obstructive-and-reflux-uropathy---primary:
    run: other-obstructive-and-reflux-uropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-unspecified---primary/output
  obstructive-and-reflux-uropathy-hydronephrosis---secondary:
    run: obstructive-and-reflux-uropathy-hydronephrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: other-obstructive-and-reflux-uropathy---primary/output
  obstructive-and-reflux-uropathy-stricture---secondary:
    run: obstructive-and-reflux-uropathy-stricture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-hydronephrosis---secondary/output
  ureteral-obstructive-and-reflux-uropathy---secondary:
    run: ureteral-obstructive-and-reflux-uropathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-stricture---secondary/output
  obstructive-and-reflux-uropathy-unspecified---secondary:
    run: obstructive-and-reflux-uropathy-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ureteral-obstructive-and-reflux-uropathy---secondary/output
  obstructive-and-reflux-uropathy-hydroureter---secondary:
    run: obstructive-and-reflux-uropathy-hydroureter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-unspecified---secondary/output
  obstructive-and-reflux-uropathy-pyonephrosis---secondary:
    run: obstructive-and-reflux-uropathy-pyonephrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-hydroureter---secondary/output
  other-obstructive-and-reflux-uropathy---secondary:
    run: other-obstructive-and-reflux-uropathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-pyonephrosis---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: other-obstructive-and-reflux-uropathy---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
