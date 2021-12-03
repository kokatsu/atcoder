import std;

void main() {
    long N, A, B;
    readf("%d %d %d\n", N, A, B);

    long P, Q, R, S;
    readf("%d %d %d %d\n", P, Q, R, S);

    long x = Q - P + 1, y = S - R + 1;
    auto res = new dchar[][](x, y);
    foreach (i; 0 .. x) {
        res[i][] = '.';
    }

    long l = max(1-A, 1-B), r = min(N-A, N-B);
    foreach (i; P .. Q+1) {
        if (i < A + l || A + r < i) {
            continue;
        }

        long k = i - A;
        long j = B + k;

        if (j - R < 0 || j - R >= y) {
            continue;
        }

        res[i-P][j-R] = '#';
    }

    l = max(1-A, B-N), r = min(N-A, B-1);
    foreach (i; P .. Q+1) {
        if (i < A + l || A + r < i) {
            continue;
        }

        long k = i - A;
        long j = B - k;

        if (j - R < 0 || j - R >= y) {
            continue;
        }

        res[i-P][j-R] = '#';
    }

    foreach (i; 0 .. x) {
        foreach (j; 0 .. y) {
            res[i][j].write;
        }
        writeln;
    }
}