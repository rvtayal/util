import csv

# take a list of lists and puts them in a csv file <filename> 
# 
# inputs:   list of lists - data for csv file
#           string - the filename
def listToCSV(list, filename):
    with open(filename, "w") as fh:
        writer = csv.writer(fh)
        writer.writerows(list)

# takes a csv file and converts it to a dictionary (or a list of dictionaries) to use in data
# analysis
#
# inputs: string - the name of the csv file
# outputs: list - a list of dictionaries, using the first row of the file as headers
def csv2dict(filename):
    # read file
    file = open(filename, "r")
    lines = file.readlines()

    # transform file into dictionary
    headers = lines.pop(0)
    headers = headers[:-1]
    headers = headers.split(',')
    dict = []
    
    for data in lines:
        thisdict = {}
        data = data[:-1].split(',')
        for i in range(len(data)):
            element = data[i]
            if element.isdigit():
                element = float(element)
            thisdict[headers[i]] = element
        dict.append(thisdict)

    #close file
    file.close()
    return dict

def getFieldFromDict(dict, field):
    keys = list(dict[0].keys())
    if field not in keys:
        return 'field not found in dictionary'
    return [d[field] for d in dict]

def filterDictOnValue(dict, field, value):
    vals = getFieldFromDict(dict, field)
    ret = []
    for i in range(len(dict)):
        if vals[i] == value:
            ret.append(dict[i])
    return ret

l = []
for i in range(10):
    j = list(range(i, 10+i))
    l.append(j)

listToCSV(l, "test.csv")