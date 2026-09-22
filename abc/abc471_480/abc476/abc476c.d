import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[] B = A[0 .. 3].dup, R;
    R ~= B.minElement;
    foreach (i; 3 .. N) {
        long p = B.minIndex;
        if (B[p] < A[i]) {
            B[p] = A[i];
        }

        R ~= B.minElement;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
