import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    long x, y;
    long[long] listA, listB;
    foreach (i; 0 .. N) {
        if (A[i] == B[i]) ++x;

        if (B[i] in listA) y += listA[B[i]];
        if (A[i] in listB) y += listB[A[i]];

        ++listA[A[i]], ++listB[B[i]];
    }

    x.writeln;
    y.writeln;
}