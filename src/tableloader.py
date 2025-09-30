import pandas as pd

class parsetable:
    def __init__(self):
        import sys,os
        sys.stdout.reconfigure(encoding='utf-8') # This line is necessary so that the Epsilon character reads properly
        self.tablepath = os.path.abspath(os.path.join(os.path.dirname(__file__),"..","doc","parsetable.xlsx"))

    def generate(self):
        df = pd.read_excel(self.tablepath,sheet_name="Rules",index_col=0)
        table = self.load()
        for i,row in df.iterrows():
            rule = row['Production']
            table = table.replace(i,rule)
        return table

    def load(self):
        df = pd.read_excel(self.tablepath,sheet_name="Table",index_col=0).fillna(0)
        return df

