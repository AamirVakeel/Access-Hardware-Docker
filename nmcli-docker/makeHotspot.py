import subprocess

#runs a terminal command and returns the output as a string
def runCommand(cmd):
    out = subprocess.Popen(cmd, shell=True, text=True, stdout=subprocess.PIPE)
    strOut = out.communicate()[0]

    return strOut
#enddef

strOut = runCommand('./hotspot.sh')
print(strOut)
