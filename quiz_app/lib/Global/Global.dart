import 'package:flutter/material.dart';

final TextEditingController usernamecontroll = TextEditingController();
// ignore: non_constant_identifier_names
List SportsQuiz = [
  {
    "question": "how many teams won the world cup?",
    "answer": [
      {"ans": "8 teams", "score": 1},
      {"ans": "12 teams", "score": 0},
      {"ans": "9 teams", "score": 0},
      {"ans": "10 teams", "score": 0},
    ],
  },
  {
    "question": "how many teams qualified to the world cup?",
    "answer": [
      {"ans": "64 teams", "score": 0},
      {"ans": "32 teams", "score": 1},
      {"ans": "16 teams", "score": 0},
      {"ans": "24 teams", "score": 0},
      {"ans": "60 teams", "score": 0},
    ],
  },
  {
    "question":
        "Who won the Ballon d'Or award for the best men's football player in 2021?",
    "answer": [
      {"ans": "benzema", "score": 0},
      {"ans": "messi", "score": 1},
      {"ans": "cristiano", "score": 0},
      {"ans": "zaltan", "score": 0},
    ],
  },
  {
    "question": "Which country has won the most FIFA World Cups?",
    "answer": [
      {"ans": "Italy", "score": 0},
      {"ans": "France", "score": 0},
      {"ans": "Brazil", "score": 1},
      {"ans": "Germany", "score": 0},
    ],
  },
  {
    "question": "Which country hosted the Summer Olympics in 2020?",
    "answer": [
      {"ans": "United States", "score": 0},
      {"ans": "Japan", "score": 1},
      {"ans": "Brazil", "score": 0},
      {"ans": "France", "score": 0},
    ],
  },
  {
    "question":
        "Which country has won the most Olympic gold medals in history?",
    "answer": [
      {"ans": "China", "score": 0},
      {"ans": "United States", "score": 1},
      {"ans": "Soviet Union", "score": 0},
      {"ans": "United Kingdom", "score": 0},
    ],
  },
];

// ignore: non_constant_identifier_names
List HistoryQuiz = [
  {
    "question":
        "What was the name of the battle that marked the end of the Napoleonic Wars?",
    "answer": [
      {"ans": "Waterloo", "score": 1},
      {"ans": "Trafalgar", "score": 0},
      {"ans": "Austerlitz", "score": 0},
      {"ans": "Borodino", "score": 0}
    ]
  },
  {
    "question":
        "Which ancient civilization built the Machu Picchu complex in Peru?",
    "answer": [
      {"ans": "Inca", "score": 1},
      {"ans": "Maya", "score": 0},
      {"ans": "Aztec", "score": 0},
      {"ans": "Moche", "score": 0}
    ]
  },
  {
    "question": "What was the name of the treaty that ended the Korean War?",
    "answer": [
      {"ans": "Armistice Agreement", "score": 1},
      {"ans": "Treaty of Versailles", "score": 0},
      {"ans": "Treaty of Tordesillas", "score": 0},
      {"ans": "Treaty of Paris", "score": 0}
    ]
  },
  {
    "question": "Which country was the first to grant women the right to vote?",
    "answer": [
      {"ans": "New Zealand", "score": 1},
      {"ans": "United States", "score": 0},
      {"ans": "United Kingdom", "score": 0},
      {"ans": "France", "score": 0}
    ]
  },
  {
    "question":
        "What was the name of the last queen of France before the French Revolution?",
    "answer": [
      {"ans": "Marie-Antoinette", "score": 1},
      {"ans": "Catherine the Great", "score": 0},
      {"ans": "Elizabeth I", "score": 0},
      {"ans": "Victoria", "score": 0}
    ]
  },
  {
    "question":
        "What was the name of the famous naval battle fought between England and Spain in 1588?",
    "answer": [
      {"ans": "The Spanish Armada", "score": 1},
      {"ans": "The Battle of Trafalgar", "score": 0},
      {"ans": "The Battle of Lepanto", "score": 0},
      {"ans": "The Battle of Gravelines", "score": 0}
    ]
  }
];

// ignore: non_constant_identifier_names
List GeoQuiz = [
  {
    "question": "What is the highest mountain in Africa?",
    "answer": [
      {"ans": "Mount Kilimanjaro", "score": 1},
      {"ans": "Mount Everest", "score": 0},
      {"ans": "Mount McKinley", "score": 0},
      {"ans": "Mount Elbrus", "score": 0}
    ]
  },
  {
    "question": "What is the capital city of Australia?",
    "answer": [
      {"ans": "Canberra", "score": 1},
      {"ans": "Sydney", "score": 0},
      {"ans": "Melbourne", "score": 0},
      {"ans": "Brisbane", "score": 0}
    ]
  },
  {
    "question": "What is the longest river in South America?",
    "answer": [
      {"ans": "Amazon River", "score": 1},
      {"ans": "Parana River", "score": 0},
      {"ans": "Orinoco River", "score": 0},
      {"ans": "Magdalena River", "score": 0}
    ]
  },
  {
    "question":
        "Which country is both the smallest in area and population in South America?",
    "answer": [
      {"ans": "Suriname", "score": 1},
      {"ans": "Guyana", "score": 0},
      {"ans": "Uruguay", "score": 0},
      {"ans": "French Guiana", "score": 0}
    ]
  },
  {
    "question": "Which country is home to the Great Barrier Reef?",
    "answer": [
      {"ans": "Australia", "score": 1},
      {"ans": "New Zealand", "score": 0},
      {"ans": "Fiji", "score": 0},
      {"ans": "Papua New Guinea", "score": 0}
    ]
  },
  {
    "question": "Which country has the largest area of forest?",
    "answer": [
      {"ans": "Russia", "score": 1},
      {"ans": "Brazil", "score": 0},
      {"ans": "Canada", "score": 0},
      {"ans": "Indonesia", "score": 0}
    ]
  }
];
