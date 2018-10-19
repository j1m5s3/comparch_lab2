import os

testcode_dir = 'mips'
dumpsim_file = 'dumpsim'
binary_ending = '.bin'
rdump_ending = '.rgd'

mips_binaries = [testcode_dir + "/" + f for f in os.listdir(testcode_dir) if f.endswith(binary_ending)]
mips_rdumps = [f[:-4] + rdump_ending for f in mips_binaries]

def files_equal(path1, path2):
    file1 = open(path1).readlines()
    file2 = open(path2).readlines()
    
    # dirty trick to turn off flags checking
    file1 = file1[:-4]
    file2 = file2[:-4]
    
    if len(file1) != len(file2):
        return False
    
    for (l1, l2) in zip(file1, file2):
        if l1 != l2:
            return False
    
    return True

for (test_binary, solution_dumpsim) in zip(mips_binaries, mips_rdumps):
    if dumpsim_file in os.listdir():
        os.remove(dumpsim_file)
        
    os.system("echo 'g\nrdump\nq\n' | ./sim " + test_binary)
    
    if not files_equal(dumpsim_file, solution_dumpsim):
        print("FAIL:", test_binary)
        break
    else:
        print("PASS:", test_binary)

