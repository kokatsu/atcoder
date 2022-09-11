import std;

void main() {
    long X;
    readf("%d\n", X);

    long M = 1000, L = M * 2 + 1;
    auto list = new long[](L);
    foreach (i; 0 .. L) {
        long num = i - M;
        list[i] = num ^^ 5;
    }

    foreach (i; 0 .. L) {
        foreach (j; 0 .. L) {
            if (list[i] - list[j] == X) {
                writeln(i-M, " ", j-M);
                return;
            }
        }
    }
}