import std;

void main() {
    long N, K;
    readfln("%d %d", N, K);

    long[] L = new long[](N);
    long[][] A = new long[][](N);
    foreach (i; 0 .. N) {
        long[] row = readln.chomp.split.to!(long[]);
        L[i] = row[0];
        A[i] ~= row[1 .. $];
    }

    long[] C = readln.chomp.split.to!(long[]);

    --K;

    long res;
    foreach (i; 0 .. N) {
        if (K >= C[i] * L[i]) {
            K -= C[i] * L[i];
            continue;
        }

        res = A[i][K % L[i]];
        break;
    }

    res.writeln;
}
