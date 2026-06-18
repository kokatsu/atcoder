import std;

void main() {
    int N;
    readfln("%d", N);

    int[] S;
    if (N == 1) {
        S = [1];
    }
    else {
        S = iota(1, N / 2 + 1).map!(x => x * 2).array;
    }

    string res = format("%d\n%(%d %)", S.length, S);
    res.writeln;
}
