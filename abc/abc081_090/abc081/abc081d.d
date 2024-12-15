import std;

void main() {
    long N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    long[] from, to;

    long mnval = a.minElement, mxval = a.maxElement;
    long mnpos = a.minIndex, mxpos = a.maxIndex;

    bool isRev = (mnval < 0 && mxval <= 0);
    if (mnval < 0 && mxval > 0) {
        if (mxval >= -mnval) {
            foreach (i, ref x; a) {
                if (i != mxpos)
                    from ~= mxpos + 1, to ~= i.to!long + 1;
            }

            from ~= mxpos + 1, to ~= mxpos + 1;
        }
        else {
            foreach (i, ref x; a) {
                if (i != mnpos)
                    from ~= mnpos + 1, to ~= i.to!long + 1;
            }

            from ~= mnpos + 1, to ~= mnpos + 1;
            isRev = true;
        }
    }

    if (isRev) {
        foreach_reverse (i; 1 .. N) {
            from ~= i + 1, to ~= i;
        }
    }
    else {
        foreach (i; 1 .. N) {
            from ~= i, to ~= i + 1;
        }
    }

    ulong len = from.length;

    len.writeln;
    foreach (i; 0 .. len)
        writeln(from[i], " ", to[i]);
}
