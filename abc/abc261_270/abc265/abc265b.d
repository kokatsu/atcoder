import std;

void main() {
    long N, M, T;
    readf("%d %d %d\n", N, M, T);

    auto A = readln.chomp.split.to!(long[]);

    long[] bonus = new long[](N);
    foreach (_; 0 .. M) {
        long X, Y;
        readf("%d %d\n", X, Y);

        bonus[X-1] = Y;
    }

    bool isOK = true;
    foreach (i; 1 ..N) {
        T -= A[i-1];
        isOK &= (T > 0);
        if (!isOK) break;

        T += bonus[i];
    }

    writeln(isOK ? "Yes" : "No");
}