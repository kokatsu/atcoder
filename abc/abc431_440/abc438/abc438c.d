import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[] B;
    foreach (a; A) {
        B ~= a;
        if (B.length >= 4 && B[$ - 4 .. $].all!(b => b == a)) {
            B.length -= 4;
        }
    }

    size_t res = B.length;
    res.writeln;
}
