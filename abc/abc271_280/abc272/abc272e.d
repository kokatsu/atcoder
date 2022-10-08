import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    auto list = new long[][](M+1);
    foreach (i, a; A) {
        if (a >= N) continue;

        long j = i.to!long + 1;
        long l = (a >= 0 ? 1 : (a.abs+j-1)/j);
        long r = min(M, (N-a)/j);
        foreach (k; l .. r+1) {
            list[k] ~= a + j * k;
        }
    }

    foreach (i; 1 .. M+1) {
        bool[long] contains;
        foreach (l; list[i]) {
            contains[l] = true;
        }

        long res;
        while (res in contains) {
            ++res;
        }

        res.writeln;
    }
}