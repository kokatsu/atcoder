import std;

void main() {
    int A = readln.chomp.split.to!(int[]).sum;
    int B = readln.chomp.split.to!(int[]).sum;

    int res = max(A, B);
    res.writeln;
}