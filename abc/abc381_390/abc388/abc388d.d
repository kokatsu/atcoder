import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto res = A, imos = new int[](N + 1);
    foreach (i; 0 .. N) {
        res[i] += imos[i];

        int C = min(res[i], N - i - 1);
        res[i] -= C;

        ++imos[i + 1], --imos[min(i + C + 1, N)];
        imos[i + 1] += imos[i];
    }

    writefln("%(%d %)", res);
}
