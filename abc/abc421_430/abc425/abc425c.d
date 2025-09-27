import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    long[] A = readln.chomp.split.to!(long[]);

    long[] C = new long[](N * 2 + 1);
    foreach (i; 0 .. N * 2) {
        C[i + 1] = C[i] + A[i % N];
    }

    long P;
    long[] R;
    foreach (_; 0 .. Q) {
        long[] query = readln.chomp.split.to!(long[]);
        if (query[0] == 1) {
            P = (P + query[1]) % N;
        }
        else {
            long l = (query[1] - 1 + P) % N, r = (query[2] + P) % N;
            if (l >= r) {
                r += N;
            }
            R ~= C[r] - C[l];
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
