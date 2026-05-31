(* Clavichord parametric/symbolic acoustic model.
   Source-only planning model. All defaults are estimates pending measurement,
   not fabrication authority. *)

ClearAll["Global`*"];

modelMetadata = <|
  "instrument" -> "clavichord",
  "packet" -> "Round 8 Wolfram build-packet model",
  "modelName" -> "tangent defined speaking length and bebung proxy",
  "authority" -> "reference_only source; not measured; not fabrication authority"
|>;

stringFrequency[length_, tension_, linearDensity_] :=
  (1/(2 length)) Sqrt[tension/linearDensity];

tangentSpeakingLength[fullLength_, tangentFraction_] :=
  fullLength tangentFraction;

bebungTension[tension_, pressureCoefficient_, tangentPressure_] :=
  tension (1 + pressureCoefficient tangentPressure);

centsShift[baseFrequency_, shiftedFrequency_] :=
  1200 Log[2, shiftedFrequency/baseFrequency];

clavichordModel[fullStringLengthEstimate_, tangentFractionEstimate_,
   stringTensionEstimate_, linearDensityEstimate_,
   tangentPressureEstimate_, pressureToTensionCoefficientEstimate_] :=
  Module[
    {speakingLength, baseFrequency, shiftedTension, shiftedFrequency,
     bendCents},
    speakingLength =
      tangentSpeakingLength[fullStringLengthEstimate,
        tangentFractionEstimate];
    baseFrequency =
      stringFrequency[speakingLength, stringTensionEstimate,
        linearDensityEstimate];
    shiftedTension =
      bebungTension[stringTensionEstimate,
        pressureToTensionCoefficientEstimate, tangentPressureEstimate];
    shiftedFrequency =
      stringFrequency[speakingLength, shiftedTension,
        linearDensityEstimate];
    bendCents = centsShift[baseFrequency, shiftedFrequency];
    <|
      "speakingLengthEstimate" -> speakingLength,
      "baseFrequencyEstimate" -> baseFrequency,
      "shiftedFrequencyEstimate" -> shiftedFrequency,
      "bebungCentsEstimate" -> bendCents,
      "authority" ->
        "computed from estimate placeholders; pending measurement, not fabrication authority"
    |>
  ];

defaultInputs = <|
  "fullStringLengthEstimate" -> 1.0, (* estimate -- pending measurement, not fabrication authority *)
  "fullStringLengthMinimumEstimate" -> 0.3, (* estimate -- pending measurement, not fabrication authority *)
  "fullStringLengthMaximumEstimate" -> 2.0, (* estimate -- pending measurement, not fabrication authority *)
  "tangentFractionEstimate" -> 0.5, (* estimate -- pending measurement, not fabrication authority *)
  "tangentFractionMinimumEstimate" -> 0.1, (* estimate -- pending measurement, not fabrication authority *)
  "tangentFractionMaximumEstimate" -> 0.95, (* estimate -- pending measurement, not fabrication authority *)
  "stringTensionEstimate" -> 80.0, (* estimate -- pending measurement, not fabrication authority *)
  "stringTensionMinimumEstimate" -> 10.0, (* estimate -- pending measurement, not fabrication authority *)
  "stringTensionMaximumEstimate" -> 200.0, (* estimate -- pending measurement, not fabrication authority *)
  "linearDensityEstimate" -> 0.002, (* estimate -- pending measurement, not fabrication authority *)
  "linearDensityMinimumEstimate" -> 0.0002, (* estimate -- pending measurement, not fabrication authority *)
  "linearDensityMaximumEstimate" -> 0.01, (* estimate -- pending measurement, not fabrication authority *)
  "tangentPressureEstimate" -> 0.2, (* estimate -- pending measurement, not fabrication authority *)
  "tangentPressureMinimumEstimate" -> 0.0, (* estimate -- pending measurement, not fabrication authority *)
  "tangentPressureMaximumEstimate" -> 1.0, (* estimate -- pending measurement, not fabrication authority *)
  "pressureToTensionCoefficientEstimate" -> 0.03, (* estimate -- pending measurement, not fabrication authority *)
  "pressureToTensionCoefficientMinimumEstimate" -> 0.0, (* estimate -- pending measurement, not fabrication authority *)
  "pressureToTensionCoefficientMaximumEstimate" -> 0.1 (* estimate -- pending measurement, not fabrication authority *)
|>;

symbolicModel =
  clavichordModel[fullStringLengthEstimate, tangentFractionEstimate,
    stringTensionEstimate, linearDensityEstimate,
    tangentPressureEstimate, pressureToTensionCoefficientEstimate];

clavichordExplorer =
  Manipulate[
    Dataset[
      clavichordModel[fullStringLengthEstimate, tangentFractionEstimate,
        stringTensionEstimate, linearDensityEstimate,
        tangentPressureEstimate, pressureToTensionCoefficientEstimate]
    ],
    {{fullStringLengthEstimate,
      defaultInputs["fullStringLengthEstimate"],
      "full string length estimate"},
      defaultInputs["fullStringLengthMinimumEstimate"],
      defaultInputs["fullStringLengthMaximumEstimate"],
      Appearance -> "Labeled"},
    {{tangentFractionEstimate, defaultInputs["tangentFractionEstimate"],
      "tangent fraction estimate"},
      defaultInputs["tangentFractionMinimumEstimate"],
      defaultInputs["tangentFractionMaximumEstimate"],
      Appearance -> "Labeled"},
    {{stringTensionEstimate, defaultInputs["stringTensionEstimate"],
      "string tension estimate"},
      defaultInputs["stringTensionMinimumEstimate"],
      defaultInputs["stringTensionMaximumEstimate"],
      Appearance -> "Labeled"},
    {{linearDensityEstimate, defaultInputs["linearDensityEstimate"],
      "linear density estimate"},
      defaultInputs["linearDensityMinimumEstimate"],
      defaultInputs["linearDensityMaximumEstimate"],
      Appearance -> "Labeled"},
    {{tangentPressureEstimate, defaultInputs["tangentPressureEstimate"],
      "tangent pressure estimate"},
      defaultInputs["tangentPressureMinimumEstimate"],
      defaultInputs["tangentPressureMaximumEstimate"],
      Appearance -> "Labeled"},
    {{pressureToTensionCoefficientEstimate,
      defaultInputs["pressureToTensionCoefficientEstimate"],
      "pressure-to-tension coefficient estimate"},
      defaultInputs["pressureToTensionCoefficientMinimumEstimate"],
      defaultInputs["pressureToTensionCoefficientMaximumEstimate"],
      Appearance -> "Labeled"},
    SaveDefinitions -> True
  ];

<|
  "metadata" -> modelMetadata,
  "defaults" -> defaultInputs,
  "symbolicModel" -> symbolicModel,
  "explorer" -> clavichordExplorer
|>
