import os
import os.path

def savefig(fig, basename, dirpath='named-figure/', formats=['png', 'pdf']):
    '''
    Save figure in multiple formats given a base name

    Parameters:
    fig: a figure object whose (base) class is matplotlib.figure.Figure
    basename: basename of the output file
    dirpath: the path to the output directory, typically named-figure/
    formats: list of output formats

    Returns: the list of output filepaths
    '''
    if not os.path.exists(dirpath):
        os.mkdir(dirpath)
    bpath = dirpath + basename
    def save_one(fm):
        filepath = bpath + '.' + fm
        fig.savefig(fname=filepath, format=fm)
        return(filepath)
    res = [save_one(fm) for fm in formats]
    return(res)
