import 'package:flutter/material.dart';

// source: https://ipip.ori.org/new_ipip-50-item-scale.htm

enum Personality {
  extraversion,
  agreeableness,
  conscientiousness,
  emotionalStability,
  intellect,
}

const PersonalityNames = [
  'Extraversion',
  'Agreeableness',
  'Conscientiousness',
  'Emotional Stability',
  'Intellect',
];

const PersonalityColors = [
  Color(0xFF7F5098),
  Color(0xFFDD5199),
  Color(0xFFD86C2F),
  Color(0xFF7A9C57),
  Color(0xFFBB2B1C),
];

const QUIZ_TOTAL = 50;

const QUIZ_DATA = [
  {
    'question': 'Am the life of the party.',
    'score': Personality.extraversion,
    'scale': 1,
  },
  {
    'question': 'Feel little concern for others.',
    'score': Personality.agreeableness,
    'scale': -1,
  },
  {
    'question': 'Am always prepared.',
    'score': Personality.conscientiousness,
    'scale': 1,
  },
  {
    'question': 'Get stressed out easily.',
    'score': Personality.emotionalStability,
    'scale': -1,
  },
  {
    'question': 'Have a rich vocabulary.',
    'score': Personality.intellect,
    'scale': 1,
  },
  {
    'question': 'Don\'t talk a lot.',
    'score': Personality.extraversion,
    'scale': -1,
  },
  {
    'question': 'Am interested in people.',
    'score': Personality.agreeableness,
    'scale': 1,
  },
  {
    'question': 'Leave my belongings around.',
    'score': Personality.conscientiousness,
    'scale': -1,
  },
  {
    'question': 'Am relaxed most of the time.',
    'score': Personality.emotionalStability,
    'scale': 1,
  },
  {
    'question': 'Have difficulty understanding abstract ideas.',
    'score': Personality.intellect,
    'scale': -1,
  },
  {
    'question': 'Feel comfortable around people.',
    'score': Personality.extraversion,
    'scale': 1,
  },
  {
    'question': 'Insult people.',
    'score': Personality.agreeableness,
    'scale': -1,
  },
  {
    'question': 'Pay attention to details.',
    'score': Personality.conscientiousness,
    'scale': 1,
  },
  {
    'question': 'Worry about things.',
    'score': Personality.emotionalStability,
    'scale': -1,
  },
  {
    'question': 'Have a vivid imagination.',
    'score': Personality.intellect,
    'scale': 1,
  },
  {
    'question': 'Keep in the background.',
    'score': Personality.extraversion,
    'scale': -1,
  },
  {
    'question': 'Sympathize with others\' feelings.',
    'score': Personality.agreeableness,
    'scale': 1,
  },
  {
    'question': 'Make a mess of things.',
    'score': Personality.conscientiousness,
    'scale': -1,
  },
  {
    'question': 'Seldom feel blue.',
    'score': Personality.emotionalStability,
    'scale': 1,
  },
  {
    'question': 'Am not interested in abstract ideas.',
    'score': Personality.intellect,
    'scale': -1,
  },
  {
    'question': 'Start conversations.',
    'score': Personality.extraversion,
    'scale': 1,
  },
  {
    'question': 'Am not interested in other people\'s problems.',
    'score': Personality.agreeableness,
    'scale': -1,
  },
  {
    'question': 'Get chores done right away.',
    'score': Personality.conscientiousness,
    'scale': 1,
  },
  {
    'question': 'Am easily disturbed.',
    'score': Personality.emotionalStability,
    'scale': -1,
  },
  {
    'question': 'Have excellent ideas.',
    'score': Personality.intellect,
    'scale': 1,
  },
  {
    'question': 'Have little to say.',
    'score': Personality.extraversion,
    'scale': -1,
  },
  {
    'question': 'Have a soft heart.',
    'score': Personality.agreeableness,
    'scale': 1,
  },
  {
    'question': 'Often forget to put things back in their proper place.',
    'score': Personality.conscientiousness,
    'scale': -1,
  },
  {
    'question': 'Get upset easily.',
    'score': Personality.emotionalStability,
    'scale': -1,
  },
  {
    'question': 'Do not have a good imagination.',
    'score': Personality.intellect,
    'scale': -1,
  },
  {
    'question': 'Talk to a lot of different people at parties.',
    'score': Personality.extraversion,
    'scale': 1,
  },
  {
    'question': 'Am not really interested in others.',
    'score': Personality.agreeableness,
    'scale': -1,
  },
  {
    'question': 'Like order.',
    'score': Personality.conscientiousness,
    'scale': 1,
  },
  {
    'question': 'Change my mood a lot.',
    'score': Personality.emotionalStability,
    'scale': -1,
  },
  {
    'question': 'Am quick to understand things.',
    'score': Personality.intellect,
    'scale': 1,
  },
  {
    'question': 'Don\'t like to draw attention to myself.',
    'score': Personality.extraversion,
    'scale': -1,
  },
  {
    'question': 'Take time out for others.',
    'score': Personality.agreeableness,
    'scale': 1,
  },
  {
    'question': 'Shirk my duties.',
    'score': Personality.conscientiousness,
    'scale': -1,
  },
  {
    'question': 'Have frequent mood swings.',
    'score': Personality.emotionalStability,
    'scale': -1,
  },
  {
    'question': 'Use difficult words.',
    'score': Personality.intellect,
    'scale': 1,
  },
  {
    'question': 'Don\'t mind being the center of attention.',
    'score': Personality.extraversion,
    'scale': 1,
  },
  {
    'question': 'Feel others\' emotions.',
    'score': Personality.agreeableness,
    'scale': 1,
  },
  {
    'question': 'Follow a schedule.',
    'score': Personality.conscientiousness,
    'scale': 1,
  },
  {
    'question': 'Get irritated easily.',
    'score': Personality.emotionalStability,
    'scale': -1,
  },
  {
    'question': 'Spend time reflecting on things.',
    'score': Personality.intellect,
    'scale': 1,
  },
  {
    'question': 'Am quiet around strangers.',
    'score': Personality.extraversion,
    'scale': -1,
  },
  {
    'question': 'Make people feel at ease.',
    'score': Personality.agreeableness,
    'scale': 1,
  },
  {
    'question': 'Am exacting in my work.',
    'score': Personality.conscientiousness,
    'scale': 1,
  },
  {
    'question': 'Often feel blue.',
    'score': Personality.emotionalStability,
    'scale': -1,
  },
  {
    'question': 'Am full of ideas.',
    'score': Personality.intellect,
    'scale': 1,
  },
];
