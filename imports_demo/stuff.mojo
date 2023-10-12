from python import Python

fn do_stuff() raises:
    let np = Python.import_module('numpy')
    let arr = np.array([1, 4, 9, 16])
    print(arr * 2)