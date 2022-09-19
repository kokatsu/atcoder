import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int L = 10 ^^ 4 + 1;
    foreach (i; 1 .. L) {
        int x = i * 8 / 100, y = i * 10 / 100;

        if (x == A && y == B) {
            i.writeln;
            return;
        }
    }

    writeln(-1);
}