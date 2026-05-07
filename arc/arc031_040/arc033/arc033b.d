import std;

void main() {
    int NA, NB;
    readfln("%d %d", NA, NB);

    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    A.sort;
    B.sort;

    auto U = multiwayUnion([A, B]).array;
    auto D = setIntersection(A, B).array;

    real Jaccard = D.length.to!real / U.length;

    string res = format("%0.20f", Jaccard);
    res.writeln;
}
