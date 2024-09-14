# SOURCES
#
# Salem F, Johnson TN, Abduljalil K, Tucker GT, Rostami-Hodjegan A. A
# re-evaluation and validation of ontogeny functions for cytochrome P450 1A2 and
# 3A4 based on in vivo data. Clin Pharmacokinet. 2014 Jul;53(7):625-36.
# [doi: 10.1007/s40262-014-0140-7](https://doi.org/10.1007/s40262-014-0140-7).
# Erratum in: Clin Pharmacokinet. 2015 Jun;54(6):671.
# PMID: 24671884.
#
# Upreti VV, Wahlstrom JL. Meta-analysis of hepatic cytochrome P450 ontogeny to
# underwrite the prediction of pediatric pharmacokinetics using physiologically
# based pharmacokinetic modeling. J Clin Pharmacol. 2016 Mar;56(3):266-83.
# [doi: 10.1002/jcph.585](https://doi.org/10.1002/jcph.585).
# Epub 2015 Oct 9.
# PMID: 26139104.
#
# Cheung KWK, van Groen BD, Spaans E, van Borselen MD, de Bruijn ACJM,
# Simons-Oosterhuis Y, Tibboel D, Samsom JN, Verdijk RM, Smeets B, Zhang L, Huang
# SM, Giacomini KM, de Wildt SN. A Comprehensive Analysis of Ontogeny of Renal
# Drug Transporters: mRNA Analyses, Quantitative Proteomics, and Localization.
# Clin Pharmacol Ther. 2019 Nov;106(5):1083-1092.
# [doi: 10.1002/cpt.1516](https://doi.org/10.1002/cpt.1516).
# Epub 2019 Jul 3.
# PMID: 31127606;
# PMCID: PMC6777991.

ontogeny_param <- tribble(
  ~Loc,     ~Param, ~Synonyme, ~Fmax, ~Fbirth,  ~Age50,    ~N, ~Agecap,   ~C0,    ~C1, ~Agecap_lin,        ~Class,     ~Name,
  "hepatic",   "CYP1A2",        NA,  1.71,    0.24,    0.36,  1.73,       3,    NA,     NA,          NA,         "CYP",  "CYP1A2",
  "hepatic",   "CYP2A6",        NA,     1,       0,    0.21,  5.68,       1,    NA,     NA,          NA,         "CYP",  "CYP2A6",
  "hepatic",   "CYP2B6",        NA,     1,   0.277,   1.537,  1.73,      25,    NA,     NA,          NA,         "CYP",  "CYP2B6",
  "hepatic",   "CYP2C8",        NA, 1.053,    0.41,   0.366,  0.68,      20,    NA,     NA,          NA,         "CYP",  "CYP2C8",
  "hepatic",   "CYP2C9",        NA,  0.98,    0.17,  0.0157,  0.53,       5,    NA,     NA,          NA,         "CYP",  "CYP2C9",
  "hepatic",  "CYP2C18",        NA,  0.98,     0.3,    0.29,  2.44,       5,    NA,     NA,          NA,         "CYP", "CYP2C18",
  "hepatic",  "CYP2C19",        NA,  0.98,     0.3,    0.29,  2.44,       5,    NA,     NA,          NA,         "CYP", "CYP2C19",
  "hepatic",   "CYP2D6",        NA,     1,   0.036,     0.1,     1,      10,    NA,     NA,          NA,         "CYP",  "CYP2D6",
  "hepatic",   "CYP2E1",        NA,  0.99,       0,    0.23,   0.5,      18,    NA,     NA,          NA,         "CYP",  "CYP2E1",
  "hepatic",   "CYP2J2",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "CYP",  "CYP2J2",
  "hepatic",   "CYP3A4",        NA,  1.06,    0.11,    0.64,  1.91,      25,    NA,     NA,          NA,         "CYP",  "CYP3A4",
  "hepatic",   "CYP3A5",        NA,     1,       1,       0,     1,      25,    NA,     NA,          NA,         "CYP",  "CYP3A5",
  "hepatic",   "CYP3A7",        NA,     0,      33,   0.141,  2.76,      25,    NA,     NA,          NA,         "CYP",  "CYP3A7",
  "intestinal",   "CYP3A4",        NA, 1.059,    0.42,   2.357,     1,      18,    NA,     NA,          NA,         "CYP",  "CYP3A4",
  "intestinal",   "CYP3A5",        NA, 1.059,    0.42,   2.357,     1,      18,    NA,     NA,          NA,         "CYP",  "CYP3A5",
  "intestinal",   "CYP2C9",        NA, 1.059,    0.42,   2.357,     1,      18,    NA,     NA,          NA,         "CYP",  "CYP2C9",
  "intestinal",  "CYP2C19",        NA, 1.059,    0.42,   2.357,     1,      18,    NA,     NA,          NA,         "CYP", "CYP2C19",
  "intestinal",   "CYP2D6",        NA, 1.059,    0.42,   2.357,     1,      18,    NA,     NA,          NA,         "CYP",  "CYP2D6",
  "intestinal",   "CYP2J2",        NA, 1.059,    0.42,   2.357,     1,      18,    NA,     NA,          NA,         "CYP",  "CYP2J2",
  "hepatic",   "UGT1A1",        NA,     1,       0,   0.183, 1.105,      25,    NA,     NA,          NA,         "UGT",  "UGT1A1",
  "hepatic",   "UGT1A3",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "UGT",  "UGT1A3",
  "hepatic",   "UGT1A4",        NA, 1.028,    0.05,   1.042,  1.36,      20,    NA,     NA,          NA,         "UGT",  "UGT1A4",
  "hepatic",   "UGT1A5",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "UGT",  "UGT1A5",
  "hepatic",   "UGT1A6",        NA, 1.025,   0.142,   0.411,  0.97,      15,    NA,     NA,          NA,         "UGT",  "UGT1A6",
  "hepatic",   "UGT1A7",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "UGT",  "UGT1A7",
  "hepatic",   "UGT1A8",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "UGT",  "UGT1A8",
  "hepatic",   "UGT1A9",        NA, 1.012,  0.0541, 0.07228, 5.771,    0.16,    NA,     NA,          NA,         "UGT",  "UGT1A9",
  "hepatic",  "UGT1A10",        NA,     1,       1,      10,     1,       1,    NA,     NA,          NA,         "UGT", "UGT1A10",
  "hepatic",   "UGT2B4",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "UGT",  "UGT2B4",
  "hepatic",   "UGT2B7",        NA,     0,       0,       0,     1,       0, 0.113, 0.0425,          21,         "UGT",  "UGT2B7",
  "hepatic",  "UGT2B10",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "UGT", "UGT2B10",
  "hepatic",  "UGT2B11",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "UGT", "UGT2B11",
  "hepatic",  "UGT2B15",        NA,     0,       0,       0,     1,       0, 0.495,  0.025,          20,         "UGT", "UGT2B15",
  "hepatic",  "UGT2B17",        NA, 0.289,       0,       0,     1,       8, 0.289,  0.067,        18.5,         "UGT", "UGT2B17",
  "hepatic",  "UGT2B28",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "UGT", "UGT2B28",
  "hepatic",     "CES1",        NA,     1,   0.205,   0.542, 0.977,      25,    NA,     NA,          NA,         "CES",    "CES1",
  "hepatic",     "CES2",        NA,   1.1,       0,   0.043,   0.3,      25,    NA,     NA,          NA,         "CES",    "CES2",
  "intestinal",     "CES1",        NA,     1,       1,      10, 0.001,       0,    NA,     NA,          NA,         "CES",    "CES1",
  "intestinal",     "CES2",        NA, 1.039,   0.187,   0.252, 1.459,       2,    NA,     NA,          NA,         "CES",    "CES2",
  "hepatic",    "ABCB1",     "P-gp",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",     "P-gp",
  "hepatic",    "ABCC2",    "MRP2",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "MRP2",
  "hepatic",    "ABCG2",    "BCRP",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "BCRP",
  "hepatic",  "SLCO1B1", "OATP1B1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter", "OATP1B1",
  "hepatic",  "SLCO1B3", "OATP1B3",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter", "OATP1B3",
  "hepatic",  "SLCO2B1", "OATP2B1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter", "OATP2B1",
  "intestinal",    "ABCB1",    "P-gp",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "P-gp",
  "intestinal",    "ABCC2",    "MRP2",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "MRP2",
  "intestinal",    "ABCG2",    "BCRP",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "BCRP",
  "brain",    "ABCB1",     "P-gp",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",     "P-gp",
  "brain",    "ABCC4",    "MRP4",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "MRP4",
  "brain",    "ABCG2",    "BCRP",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "BCRP",
  "brain",   "SLC2A1",   "GLUT1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",   "GLUT1",
  "brain",  "SLC29A1",    "ENT1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "ENT1",
  "brain",  "SLC16A1",    "MCT1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "MCT1",
  "brain",  "SLCO1A2", "OATP1A2",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter", "OATP1A2",
  "brain",  "SLCO1B3", "OATP1B3",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter", "OATP1B3",
  "brain",  "SLCO1C1", "OATP1C1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter", "OATP1C1",
  "brain",  "SLCO2B1", "OATP2B1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter", "OATP2B1",
  "brain",  "SLC22A1",    "OCT1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "OCT1",
  "brain",  "SLC22A3",    "OCT3",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "OCT3",
  "brain",  "SLC22A6",    "OAT1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "OAT1",
  "brain",  "SLC22A7",    "OAT2",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "OAT2",
  "brain",  "SLC22A8",    "OAT3",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "OAT3",
  "brain",  "SLC22A9",    "OAT7",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "OAT7",
  "renal",    "ABCB1",    "P-gp",     1,       0,   0.077,  0.73,      25,    NA,     NA,          NA, "transporter",    "P-gp",
  "renal",    "ABCC2",    "MRP2",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "MRP2",
  "renal",    "ABCC4",    "MRP4",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "MRP4",
  "renal",    "ABCG2",    "BCRP",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "BCRP",
  "renal",  "SLC10A2",    "ASBT",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "ASBT",
  "renal",  "SLC16A1",    "MCT1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "MCT1",
  "renal",  "SLC19A2",   "THTR1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",   "THTR1",
  "renal",  "SLC19A3",   "THTR2",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",   "THTR2",
  "renal",  "SLCO4C1", "OATP4C1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter", "OATP4C1",
  "renal",  "SLC22A2",    "OCT2",     1,       0,   0.084,     1,      25,    NA,     NA,          NA, "transporter",    "OCT2",
  "renal",  "SLC22A4",   "OCTN1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",   "OCTN1",
  "renal",  "SLC22A5",   "OCTN2",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",   "OCTN2",
  "renal",  "SLC22A6",    "OAT1",     1,       0,   0.379,  0.43,      25,    NA,     NA,          NA, "transporter",    "OAT1",
  "renal",  "SLC22A7",    "OAT2",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "OAT2",
  "renal",  "SLC22A8",    "OAT3",     1,       0,    0.59,  0.51,      25,    NA,     NA,          NA, "transporter",    "OAT3",
  "renal", "SLC22A11",    "OAT4",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",    "OAT4",
  "renal", "SLC22A12",   "URAT1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",   "URAT1",
  "renal",  "SLC47A1",   "MATE1",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter",   "MATE1",
  "renal",  "SLC47A2", "MATE2-K",     1,       1,      10,     1,       0,    NA,     NA,          NA, "transporter", "MATE2-K",
  "hepatic",     "FMO1",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "FMO",    "FMO1",
  "hepatic",     "FMO3",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "FMO",    "FMO3",
  "hepatic",     "FMO5",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "FMO",    "FMO5",
  "intestinal",     "FMO1",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "FMO",    "FMO1",
  "intestinal",     "FMO3",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "FMO",    "FMO3",
  "intestinal",     "FMO5",        NA,     1,       1,      10,     1,       0,    NA,     NA,          NA,         "FMO",    "FMO5"
)


