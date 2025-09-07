import std;

void main() {
    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    int res = A.sum - B.sum + 1;
    res.writeln;
}
