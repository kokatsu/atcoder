import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    bool isOK = true;
    bool isA = true, isB = true;
    foreach (i; 0 .. N-1) {
        bool isa, isb;

        if (isA) {
            long dA = abs(A[i] - A[i+1]);
            isa |= (dA <= K);

            long dB = abs(A[i] - B[i+1]);
            isb |= (dB <= K);
        }

        if (isB) {
            long dA = abs(B[i] - A[i+1]);
            isa |= (dA <= K);

            long dB = abs(B[i] - B[i+1]);
            isb |= (dB <= K);
        }

        if (!isa && !isb) isOK = false;

        isA = isa, isB = isb;
    }

    writeln(isOK ? "Yes" : "No");
}