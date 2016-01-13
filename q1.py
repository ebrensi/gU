#!usr/bin/env python

# This script counts words (unique and total) and sentences in a text file,
#  with the assumption that sentences are separated by two spaces after a
#  period. Run it with "python q1.py [filename]"

import sys


def main(args):
    filename = args[0]
    word_counts = {}
    sentences = 0

    with open(filename, 'r') as infile:
        for line in iter(infile):

            for word in line.split():
                if word not in word_counts:
                    word_counts[word] = 1
                else:
                    word_counts[word] += 1

            # We'll assume the end of a sentence is dentoted by a period
            # followed by two spaces, or if the line ends with a period.
            sentences += line.count('. ')
            if line[-1] == '.':
                sentences += 1

    print('Total word count: {}'.format(sum(word_counts.values())))
    print('Unique words: {}'.format(len(word_counts)))
    print('Sentences: {}'.format(sentences))


if __name__ == "__main__":
    main(sys.argv[1:])
