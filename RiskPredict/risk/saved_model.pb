ô­
Đ ´ 
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	
ë
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T"
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
Č
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
î
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
í
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Square
x"T
y"T"
Ttype:
	2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "risk*1.3.02
b'unknown'
j
input_xPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙	
n
PlaceholderPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
Placeholder_1Placeholder*
dtype0*
shape:*
_output_shapes
:
f
Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:
r
ReshapeReshapeinput_xReshape/shape*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
o
truncated_normal/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
Z
truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
\
truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
˘
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
dtype0*
T0*&
_output_shapes
: *

seed *
seed2 

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0*&
_output_shapes
: 
u
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0*&
_output_shapes
: 

w
VariableV2*
dtype0*
shape: *
shared_name *
	container *&
_output_shapes
: 

w/AssignAssignwtruncated_normal*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@w
\
w/readIdentityw*
T0*
_class

loc:@w*&
_output_shapes
: 
R
ConstConst*
valueB *ÍĚĚ=*
dtype0*
_output_shapes
: 
m
b
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 

b/AssignAssignbConst*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@b
P
b/readIdentityb*
T0*
_class

loc:@b*
_output_shapes
: 
˛
Conv2DConv2DReshapew/read*
T0*
paddingSAME*
strides
*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
use_cudnn_on_gpu(
T
addAddConv2Db/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
K
ReluReluadd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
q
truncated_normal_1/shapeConst*%
valueB"          @   *
dtype0*
_output_shapes
:
\
truncated_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_1/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
Ś
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
dtype0*
T0*&
_output_shapes
: @*

seed *
seed2 

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0*&
_output_shapes
: @
{
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0*&
_output_shapes
: @

w_1
VariableV2*
dtype0*
shape: @*
shared_name *
	container *&
_output_shapes
: @


w_1/AssignAssignw_1truncated_normal_1*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_1
b
w_1/readIdentityw_1*
T0*
_class

loc:@w_1*&
_output_shapes
: @
T
Const_1Const*
valueB@*ÍĚĚ=*
dtype0*
_output_shapes
:@
o
b_1
VariableV2*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@


b_1/AssignAssignb_1Const_1*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_1
V
b_1/readIdentityb_1*
T0*
_class

loc:@b_1*
_output_shapes
:@
ł
Conv2D_1Conv2DReluw_1/read*
T0*
paddingSAME*
strides
*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
use_cudnn_on_gpu(
Z
add_1AddConv2D_1b_1/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
O
Relu_1Reluadd_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
i
truncated_normal_2/shapeConst*
valueB"@     *
dtype0*
_output_shapes
:
\
truncated_normal_2/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_2/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
 
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
dtype0*
T0* 
_output_shapes
:
Ŕ*

seed *
seed2 

truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
T0* 
_output_shapes
:
Ŕ
u
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
T0* 
_output_shapes
:
Ŕ
{
w_2
VariableV2*
dtype0*
shape:
Ŕ*
shared_name *
	container * 
_output_shapes
:
Ŕ


w_2/AssignAssignw_2truncated_normal_2* 
_output_shapes
:
Ŕ*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_2
\
w_2/readIdentityw_2*
T0*
_class

loc:@w_2* 
_output_shapes
:
Ŕ
V
Const_2Const*
valueB*ÍĚĚ=*
dtype0*
_output_shapes	
:
q
b_2
VariableV2*
dtype0*
shape:*
shared_name *
	container *
_output_shapes	
:


b_2/AssignAssignb_2Const_2*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_2
W
b_2/readIdentityb_2*
T0*
_class

loc:@b_2*
_output_shapes	
:
`
Reshape_1/shapeConst*
valueB"˙˙˙˙@  *
dtype0*
_output_shapes
:
n
	Reshape_1ReshapeRelu_1Reshape_1/shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ*
Tshape0
~
MatMulMatMul	Reshape_1w_2/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
Q
add_2AddMatMulb_2/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
H
Relu_2Reluadd_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
S
dropout/ShapeShapeRelu_2*
T0*
out_type0*
_output_shapes
:
_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
dtype0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*

seed *
seed2 
z
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
T0*
_output_shapes
: 

dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
dropout/addAddPlaceholder_1dropout/random_uniform*
T0*
_output_shapes
:
F
dropout/FloorFloordropout/add*
T0*
_output_shapes
:
P
dropout/divRealDivRelu_2Placeholder_1*
T0*
_output_shapes
:
a
dropout/mulMuldropout/divdropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
truncated_normal_3/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
\
truncated_normal_3/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_3/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 

"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
dtype0*
T0*
_output_shapes
:	*

seed *
seed2 

truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0*
_output_shapes
:	
t
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0*
_output_shapes
:	
y
w_3
VariableV2*
dtype0*
shape:	*
shared_name *
	container *
_output_shapes
:	


w_3/AssignAssignw_3truncated_normal_3*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_3
[
w_3/readIdentityw_3*
T0*
_class

loc:@w_3*
_output_shapes
:	
T
Const_3Const*
valueB*ÍĚĚ=*
dtype0*
_output_shapes
:
o
b_3
VariableV2*
dtype0*
shape:*
shared_name *
	container *
_output_shapes
:


b_3/AssignAssignb_3Const_3*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_3
V
b_3/readIdentityb_3*
T0*
_class

loc:@b_3*
_output_shapes
:

MatMul_1MatMuldropout/mulw_3/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
R
add_3AddMatMul_1b_3/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q
predictAddadd_3b_3/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
R
subSubPlaceholderpredict*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
G
SquareSquaresub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
t
SumSumSquareSum/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q
Const_4Const*
valueB: *
dtype0*
_output_shapes
:
X
MeanMeanSumConst_4*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
T
gradients/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
\
gradients/Mean_grad/ShapeShapeSum*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
^
gradients/Mean_grad/Shape_1ShapeSum*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/Sum_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:
Y
gradients/Sum_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
r
gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*
_output_shapes
:
x
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*
_output_shapes
:
d
gradients/Sum_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
`
gradients/Sum_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
`
gradients/Sum_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
˘
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
_
gradients/Sum_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*
_output_shapes
:
Í
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
N*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/Sum_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*
_output_shapes
:

gradients/Sum_grad/ReshapeReshapegradients/Mean_grad/truediv gradients/Sum_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0

gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
z
gradients/Square_grad/mul/xConst^gradients/Sum_grad/Tile*
valueB
 *   @*
dtype0*
_output_shapes
: 
t
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Square_grad/mul_1Mulgradients/Sum_grad/Tilegradients/Square_grad/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
gradients/sub_grad/ShapeShapePlaceholder*
T0*
out_type0*
_output_shapes
:
a
gradients/sub_grad/Shape_1Shapepredict*
T0*
out_type0*
_output_shapes
:
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¤
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
¨
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ú
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
gradients/predict_grad/ShapeShapeadd_3*
T0*
out_type0*
_output_shapes
:
h
gradients/predict_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Ŕ
,gradients/predict_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/predict_grad/Shapegradients/predict_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ž
gradients/predict_grad/SumSum-gradients/sub_grad/tuple/control_dependency_1,gradients/predict_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ł
gradients/predict_grad/ReshapeReshapegradients/predict_grad/Sumgradients/predict_grad/Shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
Â
gradients/predict_grad/Sum_1Sum-gradients/sub_grad/tuple/control_dependency_1.gradients/predict_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

 gradients/predict_grad/Reshape_1Reshapegradients/predict_grad/Sum_1gradients/predict_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0
s
'gradients/predict_grad/tuple/group_depsNoOp^gradients/predict_grad/Reshape!^gradients/predict_grad/Reshape_1
ę
/gradients/predict_grad/tuple/control_dependencyIdentitygradients/predict_grad/Reshape(^gradients/predict_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/predict_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
1gradients/predict_grad/tuple/control_dependency_1Identity gradients/predict_grad/Reshape_1(^gradients/predict_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/predict_grad/Reshape_1*
_output_shapes
:
b
gradients/add_3_grad/ShapeShapeMatMul_1*
T0*
out_type0*
_output_shapes
:
f
gradients/add_3_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ş
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ź
gradients/add_3_grad/SumSum/gradients/predict_grad/tuple/control_dependency*gradients/add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
Ŕ
gradients/add_3_grad/Sum_1Sum/gradients/predict_grad/tuple/control_dependency,gradients/add_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
â
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_3_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1*
_output_shapes
:
ş
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyw_3/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ś
 gradients/MatMul_1_grad/MatMul_1MatMuldropout/mul-gradients/add_3_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	*
transpose_a(
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
í
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
_output_shapes
:	
Ý
gradients/AddNAddN1gradients/predict_grad/tuple/control_dependency_1/gradients/add_3_grad/tuple/control_dependency_1*
N*
T0*3
_class)
'%loc:@gradients/predict_grad/Reshape_1*
_output_shapes
:
t
 gradients/dropout/mul_grad/ShapeShapedropout/div*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
"gradients/dropout/mul_grad/Shape_1Shapedropout/Floor*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
0gradients/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/mul_grad/Shape"gradients/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/dropout/mul_grad/mulMul0gradients/MatMul_1_grad/tuple/control_dependencydropout/Floor*
T0*
_output_shapes
:
ˇ
gradients/dropout/mul_grad/SumSumgradients/dropout/mul_grad/mul0gradients/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
 
"gradients/dropout/mul_grad/ReshapeReshapegradients/dropout/mul_grad/Sum gradients/dropout/mul_grad/Shape*
T0*
_output_shapes
:*
Tshape0

 gradients/dropout/mul_grad/mul_1Muldropout/div0gradients/MatMul_1_grad/tuple/control_dependency*
T0*
_output_shapes
:
˝
 gradients/dropout/mul_grad/Sum_1Sum gradients/dropout/mul_grad/mul_12gradients/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ś
$gradients/dropout/mul_grad/Reshape_1Reshape gradients/dropout/mul_grad/Sum_1"gradients/dropout/mul_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0

+gradients/dropout/mul_grad/tuple/group_depsNoOp#^gradients/dropout/mul_grad/Reshape%^gradients/dropout/mul_grad/Reshape_1
ë
3gradients/dropout/mul_grad/tuple/control_dependencyIdentity"gradients/dropout/mul_grad/Reshape,^gradients/dropout/mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dropout/mul_grad/Reshape*
_output_shapes
:
ń
5gradients/dropout/mul_grad/tuple/control_dependency_1Identity$gradients/dropout/mul_grad/Reshape_1,^gradients/dropout/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout/mul_grad/Reshape_1*
_output_shapes
:
f
 gradients/dropout/div_grad/ShapeShapeRelu_2*
T0*
out_type0*
_output_shapes
:
x
"gradients/dropout/div_grad/Shape_1ShapePlaceholder_1*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
0gradients/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/div_grad/Shape"gradients/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

"gradients/dropout/div_grad/RealDivRealDiv3gradients/dropout/mul_grad/tuple/control_dependencyPlaceholder_1*
T0*
_output_shapes
:
ť
gradients/dropout/div_grad/SumSum"gradients/dropout/div_grad/RealDiv0gradients/dropout/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
°
"gradients/dropout/div_grad/ReshapeReshapegradients/dropout/div_grad/Sum gradients/dropout/div_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
`
gradients/dropout/div_grad/NegNegRelu_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

$gradients/dropout/div_grad/RealDiv_1RealDivgradients/dropout/div_grad/NegPlaceholder_1*
T0*
_output_shapes
:

$gradients/dropout/div_grad/RealDiv_2RealDiv$gradients/dropout/div_grad/RealDiv_1Placeholder_1*
T0*
_output_shapes
:
Ł
gradients/dropout/div_grad/mulMul3gradients/dropout/mul_grad/tuple/control_dependency$gradients/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
ť
 gradients/dropout/div_grad/Sum_1Sumgradients/dropout/div_grad/mul2gradients/dropout/div_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ś
$gradients/dropout/div_grad/Reshape_1Reshape gradients/dropout/div_grad/Sum_1"gradients/dropout/div_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0

+gradients/dropout/div_grad/tuple/group_depsNoOp#^gradients/dropout/div_grad/Reshape%^gradients/dropout/div_grad/Reshape_1
ű
3gradients/dropout/div_grad/tuple/control_dependencyIdentity"gradients/dropout/div_grad/Reshape,^gradients/dropout/div_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dropout/div_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
5gradients/dropout/div_grad/tuple/control_dependency_1Identity$gradients/dropout/div_grad/Reshape_1,^gradients/dropout/div_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout/div_grad/Reshape_1*
_output_shapes
:

gradients/Relu_2_grad/ReluGradReluGrad3gradients/dropout/div_grad/tuple/control_dependencyRelu_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
gradients/add_2_grad/ShapeShapeMatMul*
T0*
out_type0*
_output_shapes
:
g
gradients/add_2_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ş
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_2_grad/SumSumgradients/Relu_2_grad/ReluGrad*gradients/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
Ż
gradients/add_2_grad/Sum_1Sumgradients/Relu_2_grad/ReluGrad,gradients/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
_output_shapes	
:*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
ă
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ü
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1*
_output_shapes	
:
¸
gradients/MatMul_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyw_2/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ*
transpose_a( 
ł
gradients/MatMul_grad/MatMul_1MatMul	Reshape_1-gradients/add_2_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
Ŕ*
transpose_a(
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ĺ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
ă
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1* 
_output_shapes
:
Ŕ
d
gradients/Reshape_1_grad/ShapeShapeRelu_1*
T0*
out_type0*
_output_shapes
:
Ă
 gradients/Reshape_1_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tshape0

gradients/Relu_1_grad/ReluGradReluGrad gradients/Reshape_1_grad/ReshapeRelu_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
b
gradients/add_1_grad/ShapeShapeConv2D_1*
T0*
out_type0*
_output_shapes
:
f
gradients/add_1_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
ş
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_1_grad/SumSumgradients/Relu_1_grad/ReluGrad*gradients/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ľ
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tshape0
Ż
gradients/add_1_grad/Sum_1Sumgradients/Relu_1_grad/ReluGrad,gradients/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
_output_shapes
:@*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
ę
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ű
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
_output_shapes
:@
a
gradients/Conv2D_1_grad/ShapeShapeRelu*
T0*
out_type0*
_output_shapes
:
Ć
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/Shapew_1/read-gradients/add_1_grad/tuple/control_dependency*
T0*
paddingSAME*
strides
*
data_formatNHWC*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
use_cudnn_on_gpu(
x
gradients/Conv2D_1_grad/Shape_1Const*%
valueB"          @   *
dtype0*
_output_shapes
:
˘
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterRelugradients/Conv2D_1_grad/Shape_1-gradients/add_1_grad/tuple/control_dependency*
T0*
paddingSAME*
strides
*
data_formatNHWC*&
_output_shapes
: @*
use_cudnn_on_gpu(

(gradients/Conv2D_1_grad/tuple/group_depsNoOp,^gradients/Conv2D_1_grad/Conv2DBackpropInput-^gradients/Conv2D_1_grad/Conv2DBackpropFilter

0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter*&
_output_shapes
: @

gradients/Relu_grad/ReluGradReluGrad0gradients/Conv2D_1_grad/tuple/control_dependencyRelu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
^
gradients/add_grad/ShapeShapeConv2D*
T0*
out_type0*
_output_shapes
:
d
gradients/add_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
gradients/add_grad/SumSumgradients/Relu_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
Tshape0
Š
gradients/add_grad/Sum_1Sumgradients/Relu_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
â
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
: 
b
gradients/Conv2D_grad/ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
ž
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/Shapew/read+gradients/add_grad/tuple/control_dependency*
T0*
paddingSAME*
strides
*
data_formatNHWC*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
use_cudnn_on_gpu(
v
gradients/Conv2D_grad/Shape_1Const*%
valueB"             *
dtype0*
_output_shapes
:

*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/Shape_1+gradients/add_grad/tuple/control_dependency*
T0*
paddingSAME*
strides
*
data_formatNHWC*&
_output_shapes
: *
use_cudnn_on_gpu(

&gradients/Conv2D_grad/tuple/group_depsNoOp*^gradients/Conv2D_grad/Conv2DBackpropInput+^gradients/Conv2D_grad/Conv2DBackpropFilter

.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
t
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class

loc:@b*
_output_shapes
: 

beta1_power
VariableV2*
dtype0*
shape: *
shared_name *
_output_shapes
: *
	container *
_class

loc:@b
¤
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@b
`
beta1_power/readIdentitybeta1_power*
T0*
_class

loc:@b*
_output_shapes
: 
t
beta2_power/initial_valueConst*
valueB
 *wž?*
dtype0*
_class

loc:@b*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
shape: *
shared_name *
_output_shapes
: *
	container *
_class

loc:@b
¤
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@b
`
beta2_power/readIdentitybeta2_power*
T0*
_class

loc:@b*
_output_shapes
: 

w/Adam/Initializer/zerosConst*%
valueB *    *
dtype0*
_class

loc:@w*&
_output_shapes
: 
 
w/Adam
VariableV2*
dtype0*
shape: *
shared_name *&
_output_shapes
: *
	container *
_class

loc:@w
Š
w/Adam/AssignAssignw/Adamw/Adam/Initializer/zeros*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@w
f
w/Adam/readIdentityw/Adam*
T0*
_class

loc:@w*&
_output_shapes
: 

w/Adam_1/Initializer/zerosConst*%
valueB *    *
dtype0*
_class

loc:@w*&
_output_shapes
: 
˘
w/Adam_1
VariableV2*
dtype0*
shape: *
shared_name *&
_output_shapes
: *
	container *
_class

loc:@w
Ż
w/Adam_1/AssignAssignw/Adam_1w/Adam_1/Initializer/zeros*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@w
j
w/Adam_1/readIdentityw/Adam_1*
T0*
_class

loc:@w*&
_output_shapes
: 
{
b/Adam/Initializer/zerosConst*
valueB *    *
dtype0*
_class

loc:@b*
_output_shapes
: 

b/Adam
VariableV2*
dtype0*
shape: *
shared_name *
_output_shapes
: *
	container *
_class

loc:@b

b/Adam/AssignAssignb/Adamb/Adam/Initializer/zeros*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@b
Z
b/Adam/readIdentityb/Adam*
T0*
_class

loc:@b*
_output_shapes
: 
}
b/Adam_1/Initializer/zerosConst*
valueB *    *
dtype0*
_class

loc:@b*
_output_shapes
: 

b/Adam_1
VariableV2*
dtype0*
shape: *
shared_name *
_output_shapes
: *
	container *
_class

loc:@b
Ł
b/Adam_1/AssignAssignb/Adam_1b/Adam_1/Initializer/zeros*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@b
^
b/Adam_1/readIdentityb/Adam_1*
T0*
_class

loc:@b*
_output_shapes
: 

w_1/Adam/Initializer/zerosConst*%
valueB @*    *
dtype0*
_class

loc:@w_1*&
_output_shapes
: @
¤
w_1/Adam
VariableV2*
dtype0*
shape: @*
shared_name *&
_output_shapes
: @*
	container *
_class

loc:@w_1
ą
w_1/Adam/AssignAssignw_1/Adamw_1/Adam/Initializer/zeros*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_1
l
w_1/Adam/readIdentityw_1/Adam*
T0*
_class

loc:@w_1*&
_output_shapes
: @

w_1/Adam_1/Initializer/zerosConst*%
valueB @*    *
dtype0*
_class

loc:@w_1*&
_output_shapes
: @
Ś

w_1/Adam_1
VariableV2*
dtype0*
shape: @*
shared_name *&
_output_shapes
: @*
	container *
_class

loc:@w_1
ˇ
w_1/Adam_1/AssignAssign
w_1/Adam_1w_1/Adam_1/Initializer/zeros*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_1
p
w_1/Adam_1/readIdentity
w_1/Adam_1*
T0*
_class

loc:@w_1*&
_output_shapes
: @

b_1/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*
_class

loc:@b_1*
_output_shapes
:@

b_1/Adam
VariableV2*
dtype0*
shape:@*
shared_name *
_output_shapes
:@*
	container *
_class

loc:@b_1
Ľ
b_1/Adam/AssignAssignb_1/Adamb_1/Adam/Initializer/zeros*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_1
`
b_1/Adam/readIdentityb_1/Adam*
T0*
_class

loc:@b_1*
_output_shapes
:@

b_1/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*
_class

loc:@b_1*
_output_shapes
:@


b_1/Adam_1
VariableV2*
dtype0*
shape:@*
shared_name *
_output_shapes
:@*
	container *
_class

loc:@b_1
Ť
b_1/Adam_1/AssignAssign
b_1/Adam_1b_1/Adam_1/Initializer/zeros*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_1
d
b_1/Adam_1/readIdentity
b_1/Adam_1*
T0*
_class

loc:@b_1*
_output_shapes
:@

w_2/Adam/Initializer/zerosConst*
valueB
Ŕ*    *
dtype0*
_class

loc:@w_2* 
_output_shapes
:
Ŕ

w_2/Adam
VariableV2*
dtype0*
shape:
Ŕ*
shared_name * 
_output_shapes
:
Ŕ*
	container *
_class

loc:@w_2
Ť
w_2/Adam/AssignAssignw_2/Adamw_2/Adam/Initializer/zeros* 
_output_shapes
:
Ŕ*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_2
f
w_2/Adam/readIdentityw_2/Adam*
T0*
_class

loc:@w_2* 
_output_shapes
:
Ŕ

w_2/Adam_1/Initializer/zerosConst*
valueB
Ŕ*    *
dtype0*
_class

loc:@w_2* 
_output_shapes
:
Ŕ


w_2/Adam_1
VariableV2*
dtype0*
shape:
Ŕ*
shared_name * 
_output_shapes
:
Ŕ*
	container *
_class

loc:@w_2
ą
w_2/Adam_1/AssignAssign
w_2/Adam_1w_2/Adam_1/Initializer/zeros* 
_output_shapes
:
Ŕ*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_2
j
w_2/Adam_1/readIdentity
w_2/Adam_1*
T0*
_class

loc:@w_2* 
_output_shapes
:
Ŕ

b_2/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class

loc:@b_2*
_output_shapes	
:

b_2/Adam
VariableV2*
dtype0*
shape:*
shared_name *
_output_shapes	
:*
	container *
_class

loc:@b_2
Ś
b_2/Adam/AssignAssignb_2/Adamb_2/Adam/Initializer/zeros*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_2
a
b_2/Adam/readIdentityb_2/Adam*
T0*
_class

loc:@b_2*
_output_shapes	
:

b_2/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class

loc:@b_2*
_output_shapes	
:


b_2/Adam_1
VariableV2*
dtype0*
shape:*
shared_name *
_output_shapes	
:*
	container *
_class

loc:@b_2
Ź
b_2/Adam_1/AssignAssign
b_2/Adam_1b_2/Adam_1/Initializer/zeros*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_2
e
b_2/Adam_1/readIdentity
b_2/Adam_1*
T0*
_class

loc:@b_2*
_output_shapes	
:

w_3/Adam/Initializer/zerosConst*
valueB	*    *
dtype0*
_class

loc:@w_3*
_output_shapes
:	

w_3/Adam
VariableV2*
dtype0*
shape:	*
shared_name *
_output_shapes
:	*
	container *
_class

loc:@w_3
Ş
w_3/Adam/AssignAssignw_3/Adamw_3/Adam/Initializer/zeros*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_3
e
w_3/Adam/readIdentityw_3/Adam*
T0*
_class

loc:@w_3*
_output_shapes
:	

w_3/Adam_1/Initializer/zerosConst*
valueB	*    *
dtype0*
_class

loc:@w_3*
_output_shapes
:	


w_3/Adam_1
VariableV2*
dtype0*
shape:	*
shared_name *
_output_shapes
:	*
	container *
_class

loc:@w_3
°
w_3/Adam_1/AssignAssign
w_3/Adam_1w_3/Adam_1/Initializer/zeros*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_3
i
w_3/Adam_1/readIdentity
w_3/Adam_1*
T0*
_class

loc:@w_3*
_output_shapes
:	

b_3/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class

loc:@b_3*
_output_shapes
:

b_3/Adam
VariableV2*
dtype0*
shape:*
shared_name *
_output_shapes
:*
	container *
_class

loc:@b_3
Ľ
b_3/Adam/AssignAssignb_3/Adamb_3/Adam/Initializer/zeros*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_3
`
b_3/Adam/readIdentityb_3/Adam*
T0*
_class

loc:@b_3*
_output_shapes
:

b_3/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class

loc:@b_3*
_output_shapes
:


b_3/Adam_1
VariableV2*
dtype0*
shape:*
shared_name *
_output_shapes
:*
	container *
_class

loc:@b_3
Ť
b_3/Adam_1/AssignAssign
b_3/Adam_1b_3/Adam_1/Initializer/zeros*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_3
d
b_3/Adam_1/readIdentity
b_3/Adam_1*
T0*
_class

loc:@b_3*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
ˇ
Adam/update_w/ApplyAdam	ApplyAdamww/Adamw/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
: *
T0*
use_locking( *
use_nesterov( *
_class

loc:@w
¨
Adam/update_b/ApplyAdam	ApplyAdambb/Adamb/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
_output_shapes
: *
T0*
use_locking( *
use_nesterov( *
_class

loc:@b
Ă
Adam/update_w_1/ApplyAdam	ApplyAdamw_1w_1/Adam
w_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_1_grad/tuple/control_dependency_1*&
_output_shapes
: @*
T0*
use_locking( *
use_nesterov( *
_class

loc:@w_1
´
Adam/update_b_1/ApplyAdam	ApplyAdamb_1b_1/Adam
b_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_1_grad/tuple/control_dependency_1*
_output_shapes
:@*
T0*
use_locking( *
use_nesterov( *
_class

loc:@b_1
ť
Adam/update_w_2/ApplyAdam	ApplyAdamw_2w_2/Adam
w_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
Ŕ*
T0*
use_locking( *
use_nesterov( *
_class

loc:@w_2
ľ
Adam/update_b_2/ApplyAdam	ApplyAdamb_2b_2/Adam
b_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_2_grad/tuple/control_dependency_1*
_output_shapes	
:*
T0*
use_locking( *
use_nesterov( *
_class

loc:@b_2
ź
Adam/update_w_3/ApplyAdam	ApplyAdamw_3w_3/Adam
w_3/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
_output_shapes
:	*
T0*
use_locking( *
use_nesterov( *
_class

loc:@w_3

Adam/update_b_3/ApplyAdam	ApplyAdamb_3b_3/Adam
b_3/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN*
_output_shapes
:*
T0*
use_locking( *
use_nesterov( *
_class

loc:@b_3
Ŕ
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_w/ApplyAdam^Adam/update_b/ApplyAdam^Adam/update_w_1/ApplyAdam^Adam/update_b_1/ApplyAdam^Adam/update_w_2/ApplyAdam^Adam/update_b_2/ApplyAdam^Adam/update_w_3/ApplyAdam^Adam/update_b_3/ApplyAdam*
T0*
_class

loc:@b*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
_output_shapes
: *
T0*
validate_shape(*
use_locking( *
_class

loc:@b
Â

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_w/ApplyAdam^Adam/update_b/ApplyAdam^Adam/update_w_1/ApplyAdam^Adam/update_b_1/ApplyAdam^Adam/update_w_2/ApplyAdam^Adam/update_b_2/ApplyAdam^Adam/update_w_3/ApplyAdam^Adam/update_b_3/ApplyAdam*
T0*
_class

loc:@b*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
_output_shapes
: *
T0*
validate_shape(*
use_locking( *
_class

loc:@b

AdamNoOp^Adam/update_w/ApplyAdam^Adam/update_b/ApplyAdam^Adam/update_w_1/ApplyAdam^Adam/update_b_1/ApplyAdam^Adam/update_w_2/ApplyAdam^Adam/update_b_2/ApplyAdam^Adam/update_w_3/ApplyAdam^Adam/update_b_3/ApplyAdam^Adam/Assign^Adam/Assign_1
Â
initNoOp	^w/Assign	^b/Assign^w_1/Assign^b_1/Assign^w_2/Assign^b_2/Assign^w_3/Assign^b_3/Assign^beta1_power/Assign^beta2_power/Assign^w/Adam/Assign^w/Adam_1/Assign^b/Adam/Assign^b/Adam_1/Assign^w_1/Adam/Assign^w_1/Adam_1/Assign^b_1/Adam/Assign^b_1/Adam_1/Assign^w_2/Adam/Assign^w_2/Adam_1/Assign^b_2/Adam/Assign^b_2/Adam_1/Assign^w_3/Adam/Assign^w_3/Adam_1/Assign^b_3/Adam/Assign^b_3/Adam_1/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_38ea8e7fea434e3ea9722a87bb0b0ed5/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Č
save/SaveV2/tensor_namesConst*ű
valueńBîBbBb/AdamBb/Adam_1Bb_1Bb_1/AdamB
b_1/Adam_1Bb_2Bb_2/AdamB
b_2/Adam_1Bb_3Bb_3/AdamB
b_3/Adam_1Bbeta1_powerBbeta2_powerBwBw/AdamBw/Adam_1Bw_1Bw_1/AdamB
w_1/Adam_1Bw_2Bw_2/AdamB
w_2/Adam_1Bw_3Bw_3/AdamB
w_3/Adam_1*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ó
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbb/Adamb/Adam_1b_1b_1/Adam
b_1/Adam_1b_2b_2/Adam
b_2/Adam_1b_3b_3/Adam
b_3/Adam_1beta1_powerbeta2_powerww/Adamw/Adam_1w_1w_1/Adam
w_1/Adam_1w_2w_2/Adam
w_2/Adam_1w_3w_3/Adam
w_3/Adam_1*(
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
T0*

axis *
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
e
save/RestoreV2/tensor_namesConst*
valueBBb*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/AssignAssignbsave/RestoreV2*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@b
l
save/RestoreV2_1/tensor_namesConst*
valueBBb/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_1Assignb/Adamsave/RestoreV2_1*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@b
n
save/RestoreV2_2/tensor_namesConst*
valueBBb/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_2Assignb/Adam_1save/RestoreV2_2*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@b
i
save/RestoreV2_3/tensor_namesConst*
valueBBb_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_3Assignb_1save/RestoreV2_3*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_1
n
save/RestoreV2_4/tensor_namesConst*
valueBBb_1/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_4Assignb_1/Adamsave/RestoreV2_4*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_1
p
save/RestoreV2_5/tensor_namesConst*
valueBB
b_1/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_5Assign
b_1/Adam_1save/RestoreV2_5*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_1
i
save/RestoreV2_6/tensor_namesConst*
valueBBb_2*
dtype0*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_6Assignb_2save/RestoreV2_6*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_2
n
save/RestoreV2_7/tensor_namesConst*
valueBBb_2/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_7Assignb_2/Adamsave/RestoreV2_7*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_2
p
save/RestoreV2_8/tensor_namesConst*
valueBB
b_2/Adam_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_8Assign
b_2/Adam_1save/RestoreV2_8*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_2
i
save/RestoreV2_9/tensor_namesConst*
valueBBb_3*
dtype0*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_9Assignb_3save/RestoreV2_9*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_3
o
save/RestoreV2_10/tensor_namesConst*
valueBBb_3/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_10Assignb_3/Adamsave/RestoreV2_10*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_3
q
save/RestoreV2_11/tensor_namesConst*
valueBB
b_3/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_11Assign
b_3/Adam_1save/RestoreV2_11*
_output_shapes
:*
T0*
validate_shape(*
use_locking(*
_class

loc:@b_3
r
save/RestoreV2_12/tensor_namesConst* 
valueBBbeta1_power*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_12Assignbeta1_powersave/RestoreV2_12*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@b
r
save/RestoreV2_13/tensor_namesConst* 
valueBBbeta2_power*
dtype0*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_13Assignbeta2_powersave/RestoreV2_13*
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@b
h
save/RestoreV2_14/tensor_namesConst*
valueBBw*
dtype0*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_14Assignwsave/RestoreV2_14*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@w
m
save/RestoreV2_15/tensor_namesConst*
valueBBw/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
Ł
save/Assign_15Assignw/Adamsave/RestoreV2_15*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@w
o
save/RestoreV2_16/tensor_namesConst*
valueBBw/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
Ľ
save/Assign_16Assignw/Adam_1save/RestoreV2_16*&
_output_shapes
: *
T0*
validate_shape(*
use_locking(*
_class

loc:@w
j
save/RestoreV2_17/tensor_namesConst*
valueBBw_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_17Assignw_1save/RestoreV2_17*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_1
o
save/RestoreV2_18/tensor_namesConst*
valueBBw_1/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
§
save/Assign_18Assignw_1/Adamsave/RestoreV2_18*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_1
q
save/RestoreV2_19/tensor_namesConst*
valueBB
w_1/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
Š
save/Assign_19Assign
w_1/Adam_1save/RestoreV2_19*&
_output_shapes
: @*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_1
j
save/RestoreV2_20/tensor_namesConst*
valueBBw_2*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_20Assignw_2save/RestoreV2_20* 
_output_shapes
:
Ŕ*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_2
o
save/RestoreV2_21/tensor_namesConst*
valueBBw_2/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
Ą
save/Assign_21Assignw_2/Adamsave/RestoreV2_21* 
_output_shapes
:
Ŕ*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_2
q
save/RestoreV2_22/tensor_namesConst*
valueBB
w_2/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
Ł
save/Assign_22Assign
w_2/Adam_1save/RestoreV2_22* 
_output_shapes
:
Ŕ*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_2
j
save/RestoreV2_23/tensor_namesConst*
valueBBw_3*
dtype0*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_23Assignw_3save/RestoreV2_23*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_3
o
save/RestoreV2_24/tensor_namesConst*
valueBBw_3/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save/Assign_24Assignw_3/Adamsave/RestoreV2_24*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_3
q
save/RestoreV2_25/tensor_namesConst*
valueBB
w_3/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_25Assign
w_3/Adam_1save/RestoreV2_25*
_output_shapes
:	*
T0*
validate_shape(*
use_locking(*
_class

loc:@w_3
Č
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
train_op

Adam"
trainable_variables˙ü

w:0w/Assignw/read:0

b:0b/Assignb/read:0

w_1:0
w_1/Assign
w_1/read:0

b_1:0
b_1/Assign
b_1/read:0

w_2:0
w_2/Assign
w_2/read:0

b_2:0
b_2/Assign
b_2/read:0

w_3:0
w_3/Assign
w_3/read:0

b_3:0
b_3/Assign
b_3/read:0"	
	variables		

w:0w/Assignw/read:0

b:0b/Assignb/read:0

w_1:0
w_1/Assign
w_1/read:0

b_1:0
b_1/Assign
b_1/read:0

w_2:0
w_2/Assign
w_2/read:0

b_2:0
b_2/Assign
b_2/read:0

w_3:0
w_3/Assign
w_3/read:0

b_3:0
b_3/Assign
b_3/read:0
7
beta1_power:0beta1_power/Assignbeta1_power/read:0
7
beta2_power:0beta2_power/Assignbeta2_power/read:0
(
w/Adam:0w/Adam/Assignw/Adam/read:0
.

w/Adam_1:0w/Adam_1/Assignw/Adam_1/read:0
(
b/Adam:0b/Adam/Assignb/Adam/read:0
.

b/Adam_1:0b/Adam_1/Assignb/Adam_1/read:0
.

w_1/Adam:0w_1/Adam/Assignw_1/Adam/read:0
4
w_1/Adam_1:0w_1/Adam_1/Assignw_1/Adam_1/read:0
.

b_1/Adam:0b_1/Adam/Assignb_1/Adam/read:0
4
b_1/Adam_1:0b_1/Adam_1/Assignb_1/Adam_1/read:0
.

w_2/Adam:0w_2/Adam/Assignw_2/Adam/read:0
4
w_2/Adam_1:0w_2/Adam_1/Assignw_2/Adam_1/read:0
.

b_2/Adam:0b_2/Adam/Assignb_2/Adam/read:0
4
b_2/Adam_1:0b_2/Adam_1/Assignb_2/Adam_1/read:0
.

w_3/Adam:0w_3/Adam/Assignw_3/Adam/read:0
4
w_3/Adam_1:0w_3/Adam_1/Assignw_3/Adam_1/read:0
.

b_3/Adam:0b_3/Adam/Assignb_3/Adam/read:0
4
b_3/Adam_1:0b_3/Adam_1/Assignb_3/Adam_1/read:0