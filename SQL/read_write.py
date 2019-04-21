
'''
Reading the file table_list.txt and writing to the file data_delete.sql:
'''

## Reading the file table_list.txt
# ================================
with open('./table_list.csv') as fobj:
    lines = fobj.readlines()

## Assigning client
# =================
company = "'BB1010'"

# company1 = "'OMEGA'"
# company2= "'EBL'"

# client= "'CTS'"


## Creating the sql file having company_code
# ==========================================
for line in lines:
    table_name = line

    # print("DELETE FROM " + table_name + "    WHERE client_code != "+client+";")


    print("DELETE FROM " + table_name + "    WHERE company_code="+company+";")

    # print("DELETE FROM " + table_name + "    WHERE company_code != "+company+";")

    # print("DELETE FROM " + table_name + "    WHERE company_code IN ("+company1+", "+company2+", "+company3+");")

    # print("DELETE FROM " + table_name + "    WHERE company_code='OMEGA';")



## Running read_write.py script
# =============================
# python3 read_write.py > OMEGA.sql
