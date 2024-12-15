import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long M = 10 ^^ 9 + 7;

    auto dpC = new long[][](N, 2);
    dpC[0][0] = 1;

    auto dpA = new long[][](N, 2);
    dpA[0][0] = A[0];
    foreach (i; 1 .. N) {
        dpC[i][0] = dpC[i - 1].sum % M;
        dpC[i][1] = dpC[i - 1][0];

        dpA[i][0] = (dpA[i - 1].sum + (dpC[i][0] * A[i]) % M) % M;
        dpA[i][1] = (dpA[i - 1][0] - ((dpC[i][1] * A[i]) % M) + M) % M;
    }

    writeln(((dpA[N - 1].sum + M) % M + M) % M);
}
