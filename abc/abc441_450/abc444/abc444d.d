import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    int L = A.maxElement;
    int[] C = new int[](L);
    foreach (a; A) {
        ++C[a - 1];
    }

    foreach_reverse (i; 0 .. L - 1) {
        C[i] += C[i + 1];
    }

    int R;
    int[] B;
    foreach (c; C) {
        if (c == 0) {
            break;
        }

        int T = c + R;
        B ~= T % 10;
        R = T / 10;
    }

    B.reverse;

    string res = (R != 0 ? to!string(R) : "") ~ B.map!(b => b.to!string).join;
    res.writeln;
}
