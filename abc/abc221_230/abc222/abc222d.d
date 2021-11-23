import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);
    auto b = readln.chomp.split.to!(long[]);

    a[] += 1;
    b[] += 1;

    long M = 998244353;

    auto d = new long[][](N, 3002);
    d[0][a[0]] = 1;
    foreach (i; a[0] .. b[0]) {
        d[0][i+1] = d[0][i] + 1;
    }

    long chigh = b[0];

    foreach (i; 1 .. N-1) {
        foreach (j; a[i] .. b[i]+1) {
            d[i][j] = (d[i][j-1] + d[i][j] + d[i-1][min(j, chigh)]) % M;
        }
        chigh = b[i];
    }

    long res;
    foreach (i; a[N-1] .. b[N-1]+1) {
        res = (res + d[N-1][i] + d[N-2][min(i, chigh)]) % M;
    }

    res.writeln;
}