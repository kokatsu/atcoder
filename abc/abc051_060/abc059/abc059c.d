import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(long[]);

    long psum, nsum, pcnt, ncnt;
    foreach (i, x; a) {
        psum += x, nsum += x;

        if (i % 2 == 0) {
            if (psum <= 0) {
                pcnt -= psum - 1;
                psum = 1;
            }

            if (nsum >= 0) {
                ncnt += nsum + 1;
                nsum = -1;
            }
        }
        else {
            if (psum >= 0) {
                pcnt += psum + 1;
                psum = -1;
            }

            if (nsum <= 0) {
                ncnt -= nsum - 1;
                nsum = 1;
            }
        }
    }

    long res = min(pcnt, ncnt);
    res.writeln;
}