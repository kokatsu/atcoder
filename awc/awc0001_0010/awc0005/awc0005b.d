import std;

void main() {
    int N, M, K;
    readfln("%d %d %d", N, M, K);

    int[] S = readln.chomp.split.to!(int[]);

    foreach (_; 0 .. M) {
        int P, V;
        readfln("%d %d", P, V);

        S[P - 1] = V;
    }

    size_t res = S.count!(a => a < K);
    res.writeln;
}
