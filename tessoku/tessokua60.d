import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int pos;
    auto S = new Tuple!(int, int)[](N);
    auto res = new int[](N);
    res[0] = -1;
    foreach (i; 1 .. N) {
        S[++pos] = tuple(i, A[i-1]);
        while (pos > 0) {
            if (S[pos][1] > A[i]) break;
            --pos;
        }

        res[i] = (pos > 0 ? S[pos][0] : -1);
    }

    writefln("%(%s %)", res);
}