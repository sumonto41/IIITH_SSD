import csv
with open('lab_11_data.csv',mode='r',encoding="utf8") as records:
    reader = csv.reader(records) #reading csv
    data=[rows[:-6] for rows in reader] #dropping last 6 colums
    data=list(filter(lambda x: (float(x[6])>-3.0), data[1:])) # filter rows with %Change <-3
    # print(data)
    dt=[]
    dt.insert(0,[float(y[1].replace(",", "")) for y in data[1:]])
    dt.insert(1,[float(y[2].replace(",", "")) for y in data[1:]])
    dt.insert(2,[float(y[3].replace(",", "")) for y in data[1:]])
    avg_opn, avg_high, avg_low=list(map(lambda x: (sum(x)/len(x)), dt)) #computing averages
    avgtxt=open('avg_output.txt', "w") #making a avg_output.txt
    avgtxt.writelines(str(num)+"\n" for num in [avg_opn, avg_high, avg_low]) #writing average values int it
    ch=input("Enter Character: ") #taking character input
    data=list(filter(lambda x: (x[0][0]==ch), data)) # filtering based on  character
    stoout=open('stock_output.txt', "w") #making stock_output.txt
    for y in data: #writing stock data in stock_output.txt
        stoout.writelines(str(x)+" " for x in y)
        stoout.writelines("\n")
    
    
