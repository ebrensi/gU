## GU application

### Q1:
The task of this challenge is to make a basic text content analyzer that provides (1) total word count, (2) unique-word count, and (3) sentence count.  The script I wrote to do that is [`q1.py`](q1.py), and I provided a sample text document [`lorem_ipsum.txt`](lorem_ipsum.txt) as well.

For the purposes of this evaluation I assumed that a sentence is terminated by a period followed by a space (". ").  Of course this means that abbreviations like Mr. and etc.  will be recognized as sentence terminators, so this is not really a robust solution but rather a sketch of what I might develop given more time, if there were not a lot of existing tools that do this already.

running
'''
python q1.py lorem_ipsum.txt
'''
yields
'''
Total word count: 342
Unique words: 204
Sentences: 7
'''


### Q2:
Q2 [`q2.sql`](q2.sql) is my demonstration of a basic SQL query as specified in the problem statement.  I included the files [`salesperson.csv`](salesperson.csv) and [`orders.csv`](orders.csv) with the tables on which we do the query.

### Q3:
My writeup for the Split-Test Analysis problem is a markdown file viewable at [`split_test_analysis.md`](split_test_analysis.md).
The minimal Python script I wrote for it is [`q3.py`](q3.py).
