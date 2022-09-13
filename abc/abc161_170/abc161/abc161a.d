import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    A.swapAt(0, 1), A.swapAt(0, 2);

    writefln("%(%s %)", A);
}