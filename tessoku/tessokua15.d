import std;

void main() {
    readln;

    auto A = readln.chomp.split.to!(int[]);

    compress(A);
    A[] += 1;

    writefln("%(%s %)", A);
}

/// compress
void compress(T)(ref T[] arr)
if (isIntegral!T) {
    auto sorted = arr.dup.sort.uniq.array.assumeSorted;
    foreach (ref a; arr) {
        a = sorted.lowerBound(a).length.to!(T);
    }
}