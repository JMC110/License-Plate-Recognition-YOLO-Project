Į¾
Ś
Ŗ

8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint’’’’’’’’’

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"	transform*2.1.02v2.1.0-rc2-17-ge5bf8de410±
s
inputs/F_img_rawPlaceholder*'
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
o
inputs/labelPlaceholder*'
_output_shapes
:’’’’’’’’’*
dtype0	*
shape:’’’’’’’’’
l
inputs/inputs/F_img_raw_copyIdentityinputs/F_img_raw*
T0*'
_output_shapes
:’’’’’’’’’
d
inputs/inputs/label_copyIdentityinputs/label*
T0	*'
_output_shapes
:’’’’’’’’’
u
SqueezeSqueezeinputs/inputs/F_img_raw_copy*
T0*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

P
	map/ShapeShapeSqueeze*
T0*
_output_shapes
:*
out_type0
a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

map/strided_sliceStridedSlice	map/Shapemap/strided_slice/stackmap/strided_slice/stack_1map/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
j
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

map/TensorArrayV2TensorListReservemap/TensorArrayV2/element_shapemap/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
_
map/TensorArrayUnstack/ConstConst*
_output_shapes
: *
dtype0*
valueB 
©
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorSqueezemap/TensorArrayUnstack/Const*
_output_shapes
: *
element_dtype0*

shape_type0
K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

map/TensorArrayV2_1TensorListReserve!map/TensorArrayV2_1/element_shapemap/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 

	map/whileWhilemap/while/loop_countermap/strided_slice	map/Constmap/TensorArrayV2_1map/strided_slice+map/TensorArrayUnstack/TensorListFromTensor*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : *
bodyR
map_while_body_616*
condR
map_while_cond_615*
output_shapes
: : : : : : *
parallel_iterations

J
map/while/IdentityIdentity	map/while*
T0*
_output_shapes
: 
N
map/while/Identity_1Identitymap/while:1*
T0*
_output_shapes
: 
N
map/while/Identity_2Identitymap/while:2*
T0*
_output_shapes
: 
N
map/while/Identity_3Identitymap/while:3*
T0*
_output_shapes
: 
N
map/while/Identity_4Identitymap/while:4*
T0*
_output_shapes
: 
N
map/while/Identity_5Identitymap/while:5*
T0*
_output_shapes
: 

4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"šn  d   K      
ī
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while/Identity_34map/TensorArrayV2Stack/TensorListStack/element_shape*5
_output_shapes#
!:’’’’’’’’’šŻdK*
element_dtype0*
num_elements’’’’’’’’’
s
	Squeeze_1Squeezeinputs/inputs/label_copy*
T0	*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

T
map_1/ShapeShape	Squeeze_1*
T0	*
_output_shapes
:*
out_type0
c
map_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
e
map_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
e
map_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

map_1/strided_sliceStridedSlicemap_1/Shapemap_1/strided_slice/stackmap_1/strided_slice/stack_1map_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
l
!map_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’

map_1/TensorArrayV2TensorListReserve!map_1/TensorArrayV2/element_shapemap_1/strided_slice*
_output_shapes
: *
element_dtype0	*

shape_type0
a
map_1/TensorArrayUnstack/ConstConst*
_output_shapes
: *
dtype0*
valueB 
Æ
-map_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor	Squeeze_1map_1/TensorArrayUnstack/Const*
_output_shapes
: *
element_dtype0	*

shape_type0
M
map_1/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
n
#map_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
£
map_1/TensorArrayV2_1TensorListReserve#map_1/TensorArrayV2_1/element_shapemap_1/strided_slice*
_output_shapes
: *
element_dtype0	*

shape_type0
Z
map_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
„
map_1/whileStatelessWhilemap_1/while/loop_countermap_1/strided_slicemap_1/Constmap_1/TensorArrayV2_1map_1/strided_slice-map_1/TensorArrayUnstack/TensorListFromTensor*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
bodyR
map_1_while_body_754* 
condR
map_1_while_cond_753*
output_shapes
: : : : : : *
parallel_iterations

N
map_1/while/IdentityIdentitymap_1/while*
T0*
_output_shapes
: 
R
map_1/while/Identity_1Identitymap_1/while:1*
T0*
_output_shapes
: 
R
map_1/while/Identity_2Identitymap_1/while:2*
T0*
_output_shapes
: 
R
map_1/while/Identity_3Identitymap_1/while:3*
T0*
_output_shapes
: 
R
map_1/while/Identity_4Identitymap_1/while:4*
T0*
_output_shapes
: 
R
map_1/while/Identity_5Identitymap_1/while:5*
T0*
_output_shapes
: 

6map_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:#
ę
(map_1/TensorArrayV2Stack/TensorListStackTensorListStackmap_1/while/Identity_36map_1/TensorArrayV2Stack/TensorListStack/element_shape*'
_output_shapes
:’’’’’’’’’#*
element_dtype0	*
num_elements’’’’’’’’’

initNoOp~
æ

cond_png_false_6630
,cond_gif_tensorarrayv2read_tensorlistgetitem
is_gif_decode_image_substr
cond_gif_identityX
is_gif/yConst*
_output_shapes
: *
dtype0*
valueB	 BGIF2

is_gif/y
is_gifEqualis_gif_decode_image_substris_gif/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error(2
is_gif
cond_gifIf
is_gif:z:0,cond_gif_tensorarrayv2read_tensorlistgetitem*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:*%
else_branchR
cond_gif_false_673*
output_shapes
:*$
then_branchR
cond_gif_true_6722

cond_gifh
cond_gif/IdentityIdentitycond_gif:output:0*
T0*
_output_shapes
:2
cond_gif/Identity"/
cond_gif_identitycond_gif/Identity:output:0*
_input_shapes
: : 
¤
Č
map_while_cond_615
map_while_loop_counter
map_strided_slice
placeholder
placeholder_1
less_map_strided_slice/
+map_while_cond_615___redundant_placeholder0

logicaland
Z
LessLessplaceholderless_map_strided_slice*
T0*
_output_shapes
: 2
Lessd
Less_1Lessmap_while_loop_countermap_strided_slice*
T0*
_output_shapes
: 2
Less_1T

LogicalAnd
LogicalAnd
Less_1:z:0Less:z:0*
_output_shapes
: 2

LogicalAnd"

logicalandLogicalAnd:z:0*!
_input_shapes
: : : : : :
³


 decode_image_cond_jpeg_false_6455
1is_png_substr_tensorarrayv2read_tensorlistgetitem 
cond_png_decode_image_substr
cond_png_identityh
is_png/Substr/posConst*
_output_shapes
: *
dtype0*
value	B : 2
is_png/Substr/posh
is_png/Substr/lenConst*
_output_shapes
: *
dtype0*
value	B :2
is_png/Substr/lenÄ
is_png/SubstrSubstr1is_png_substr_tensorarrayv2read_tensorlistgetitemis_png/Substr/pos:output:0is_png/Substr/len:output:0*
T0*
_output_shapes
: *
unitBYTE2
is_png/Substrd
is_png/Equal/yConst*
_output_shapes
: *
dtype0*
valueB	 BPN2
is_png/Equal/y
is_png/EqualEqualis_png/Substr:output:0is_png/Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error(2
is_png/EqualÉ
cond_pngIfis_png/Equal:z:01is_png_substr_tensorarrayv2read_tensorlistgetitemcond_png_decode_image_substr*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:*%
else_branchR
cond_png_false_663*
output_shapes
:*$
then_branchR
cond_png_true_6622

cond_pngh
cond_png/IdentityIdentitycond_png:output:0*
T0*
_output_shapes
:2
cond_png/Identity"/
cond_png_identitycond_png/Identity:output:0*
_input_shapes
: : 

U
cond_gif_false_673.
*substr_tensorarrayv2read_tensorlistgetitem
identityZ

Substr/posConst*
_output_shapes
: *
dtype0*
value	B : 2

Substr/posZ

Substr/lenConst*
_output_shapes
: *
dtype0*
value	B :2

Substr/len”
SubstrSubstr*substr_tensorarrayv2read_tensorlistgetitemSubstr/pos:output:0Substr/len:output:0*
T0*
_output_shapes
: *
unitBYTE2
SubstrW
is_bmp/yConst*
_output_shapes
: *
dtype0*
value
B BBM2

is_bmp/y~
is_bmpEqualSubstr:output:0is_bmp/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error(2
is_bmp
Assert/ConstConst*
_output_shapes
: *
dtype0*A
value8B6 B0Unable to decode bytes as JPEG, PNG, GIF, or BMP2
Assert/Const
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*A
value8B6 B0Unable to decode bytes as JPEG, PNG, GIF, or BMP2
Assert/Assert/data_0
Assert/AssertAssert
is_bmp:z:0Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 *
	summarize2
Assert/Assertf
check_channels/xConst*
_output_shapes
: *
dtype0*
value	B :2
check_channels/xf
check_channels/yConst*
_output_shapes
: *
dtype0*
value	B :2
check_channels/y£
check_channelsNotEqualcheck_channels/x:output:0check_channels/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error(2
check_channels
Assert_1/ConstConst*
_output_shapes
: *
dtype0*J
valueAB? B9Channels must be in (None, 0, 3) when decoding BMP images2
Assert_1/ConstŖ
Assert_1/Assert/data_0Const*
_output_shapes
: *
dtype0*J
valueAB? B9Channels must be in (None, 0, 3) when decoding BMP images2
Assert_1/Assert/data_0
Assert_1/AssertAssertcheck_channels:z:0Assert_1/Assert/data_0:output:0*

T
2*
_output_shapes
 *
	summarize2
Assert_1/AssertĄ
	DecodeBmp	DecodeBmp*substr_tensorarrayv2read_tensorlistgetitem^Assert/Assert^Assert_1/Assert*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’*
channels 2
	DecodeBmp{
IdentityIdentityDecodeBmp:image:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identity"
identityIdentity:output:0*
_input_shapes
: 
Ä
w
decode_image_cond_jpeg_true_6442
.decodejpeg_tensorarrayv2read_tensorlistgetitem
placeholder
identityp
check_jpeg_channels/xConst*
_output_shapes
: *
dtype0*
value	B :2
check_jpeg_channels/xp
check_jpeg_channels/yConst*
_output_shapes
: *
dtype0*
value	B :2
check_jpeg_channels/y·
check_jpeg_channelsNotEqualcheck_jpeg_channels/x:output:0check_jpeg_channels/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error(2
check_jpeg_channels
Assert/ConstConst*
_output_shapes
: *
dtype0*N
valueEBC B=Channels must be in (None, 0, 1, 3) when decoding JPEG images2
Assert/ConstŖ
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*N
valueEBC B=Channels must be in (None, 0, 1, 3) when decoding JPEG images2
Assert/Assert/data_0
Assert/AssertAssertcheck_jpeg_channels:z:0Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 *
	summarize2
Assert/Assert

DecodeJpeg
DecodeJpeg.decodejpeg_tensorarrayv2read_tensorlistgetitem^Assert/Assert*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
acceptable_fraction%  ?*
channels*

dct_method *
fancy_upscaling(*
ratio*
try_recover_truncated( 2

DecodeJpegs
IdentityIdentityDecodeJpeg:image:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2

Identity"
identityIdentity:output:0*
_input_shapes
: : 
÷
²
map_1_while_body_754
map_1_while_loop_counter
map_1_strided_slice_0
placeholder
placeholder_1
map_1_strided_slice_1_0W
Stensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_0	
add_1
map_1_strided_slice
add(
$tensorarrayv2write_tensorlistsetitem
map_1_strided_slice_1U
Qtensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensoru
TensorArrayV2Read/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
TensorArrayV2Read/Const
#TensorArrayV2Read/TensorListGetItemTensorListGetItemStensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_0placeholder TensorArrayV2Read/Const:output:0*
_output_shapes
: *
element_dtype0	2%
#TensorArrayV2Read/TensorListGetItemf
one_hot/on_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R2
one_hot/on_valueh
one_hot/off_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
one_hot/off_value`
one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :#2
one_hot/depthŪ
one_hotOneHot*TensorArrayV2Read/TensorListGetItem:item:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0	*
TI0	*
_output_shapes
:#*
axis’’’’’’’’’2	
one_hot¼
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderone_hot:output:0*
_output_shapes
: *
element_dtype0	2&
$TensorArrayV2Write/TensorListSetItemP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/y;
add_0AddV2placeholderadd/y:output:0*
T02
addT
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yN
add_1_0AddV2map_1_while_loop_counteradd_1/y:output:0*
T02
add_1"
add	add_0:z:0"
add_1add_1_0:z:0",
map_1_strided_slicemap_1_strided_slice_0"0
map_1_strided_slice_1map_1_strided_slice_1_0"Ø
Qtensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensorStensorarrayv2read_tensorlistgetitem_map_1_tensorarrayunstack_tensorlistfromtensor_0"\
$tensorarrayv2write_tensorlistsetitem4TensorArrayV2Write/TensorListSetItem:output_handle:0*
_input_shapes
: : : : : : 
»
e
cond_png_true_6621
-decodepng_tensorarrayv2read_tensorlistgetitem
placeholder
identity„
	DecodePng	DecodePng-decodepng_tensorarrayv2read_tensorlistgetitem*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
channels*
dtype02
	DecodePngr
IdentityIdentityDecodePng:image:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’2

Identity"
identityIdentity:output:0*
_input_shapes
: : 
ą"
„
map_while_body_616
map_while_loop_counter
map_strided_slice_0
placeholder
placeholder_1
map_strided_slice_1_0U
Qtensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0	
add_1
map_strided_slice
add(
$tensorarrayv2write_tensorlistsetitem
map_strided_slice_1S
Otensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensoru
TensorArrayV2Read/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
TensorArrayV2Read/Const
#TensorArrayV2Read/TensorListGetItemTensorListGetItemQtensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0placeholder TensorArrayV2Read/Const:output:0*
_output_shapes
: *
element_dtype02%
#TensorArrayV2Read/TensorListGetItemt
decode_image/Substr/posConst*
_output_shapes
: *
dtype0*
value	B : 2
decode_image/Substr/post
decode_image/Substr/lenConst*
_output_shapes
: *
dtype0*
value	B :2
decode_image/Substr/lenÕ
decode_image/SubstrSubstr*TensorArrayV2Read/TensorListGetItem:item:0 decode_image/Substr/pos:output:0 decode_image/Substr/len:output:0*
T0*
_output_shapes
: *
unitBYTE2
decode_image/Substr
decode_image/is_jpeg/Substr/posConst*
_output_shapes
: *
dtype0*
value	B : 2!
decode_image/is_jpeg/Substr/pos
decode_image/is_jpeg/Substr/lenConst*
_output_shapes
: *
dtype0*
value	B :2!
decode_image/is_jpeg/Substr/lenõ
decode_image/is_jpeg/SubstrSubstr*TensorArrayV2Read/TensorListGetItem:item:0(decode_image/is_jpeg/Substr/pos:output:0(decode_image/is_jpeg/Substr/len:output:0*
T0*
_output_shapes
: *
unitBYTE2
decode_image/is_jpeg/Substr
decode_image/is_jpeg/Equal/yConst*
_output_shapes
: *
dtype0*
valueB	 B’Ų’2
decode_image/is_jpeg/Equal/yĻ
decode_image/is_jpeg/EqualEqual$decode_image/is_jpeg/Substr:output:0%decode_image/is_jpeg/Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error(2
decode_image/is_jpeg/Equal
decode_image/cond_jpegIfdecode_image/is_jpeg/Equal:z:0*TensorArrayV2Read/TensorListGetItem:item:0decode_image/Substr:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
:*3
else_branch$R"
 decode_image_cond_jpeg_false_645*
output_shapes
:*2
then_branch#R!
decode_image_cond_jpeg_true_6442
decode_image/cond_jpeg
decode_image/cond_jpeg/IdentityIdentitydecode_image/cond_jpeg:output:0*
T0*
_output_shapes
:2!
decode_image/cond_jpeg/Identity
convert_image/CastCast(decode_image/cond_jpeg/Identity:output:0*

DstT0*

SrcT0*
Truncate( *
_output_shapes
:2
convert_image/Castg
convert_image/yConst*
_output_shapes
: *
dtype0*
valueB
 *;2
convert_image/yz
convert_imageMulconvert_image/Cast:y:0convert_image/y:output:0*
T0*
_output_shapes
:2
convert_imagew
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"šn  d   K      2
Reshape/shape
ReshapeReshapeconvert_image:z:0Reshape/shape:output:0*
T0*
Tshape0*(
_output_shapes
:šŻdK2	
Reshape[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
	truediv/yv
truedivRealDivReshape:output:0truediv/y:output:0*
T0*(
_output_shapes
:šŻdK2	
truediv·
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholdertruediv:z:0*
_output_shapes
: *
element_dtype02&
$TensorArrayV2Write/TensorListSetItemP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/y;
add_0AddV2placeholderadd/y:output:0*
T02
addT
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yL
add_1_0AddV2map_while_loop_counteradd_1/y:output:0*
T02
add_1"
add	add_0:z:0"
add_1add_1_0:z:0"(
map_strided_slicemap_strided_slice_0",
map_strided_slice_1map_strided_slice_1_0"¤
Otensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorQtensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0"\
$tensorarrayv2write_tensorlistsetitem4TensorArrayV2Write/TensorListSetItem:output_handle:0*
_input_shapes
: : : : : : 
“
Ņ
map_1_while_cond_753
map_1_while_loop_counter
map_1_strided_slice
placeholder
placeholder_1
less_map_1_strided_slice1
-map_1_while_cond_753___redundant_placeholder0

logicaland
\
LessLessplaceholderless_map_1_strided_slice*
T0*
_output_shapes
: 2
Lessh
Less_1Lessmap_1_while_loop_countermap_1_strided_slice*
T0*
_output_shapes
: 2
Less_1T

LogicalAnd
LogicalAnd
Less_1:z:0Less:z:0*
_output_shapes
: 2

LogicalAnd"

logicalandLogicalAnd:z:0*!
_input_shapes
: : : : : :
µ
W
cond_gif_true_6721
-decodegif_tensorarrayv2read_tensorlistgetitem
identityn
check_gif_channels/xConst*
_output_shapes
: *
dtype0*
value	B :2
check_gif_channels/xn
check_gif_channels/yConst*
_output_shapes
: *
dtype0*
value	B :2
check_gif_channels/y³
check_gif_channelsNotEqualcheck_gif_channels/x:output:0check_gif_channels/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error(2
check_gif_channelsr
check_gif_channels_1/xConst*
_output_shapes
: *
dtype0*
value	B :2
check_gif_channels_1/xr
check_gif_channels_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
check_gif_channels_1/y»
check_gif_channels_1NotEqualcheck_gif_channels_1/x:output:0check_gif_channels_1/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error(2
check_gif_channels_1p

LogicalAnd
LogicalAndcheck_gif_channels:z:0check_gif_channels_1:z:0*
_output_shapes
: 2

LogicalAnd
Assert/ConstConst*
_output_shapes
: *
dtype0*J
valueAB? B9Channels must be in (None, 0, 3) when decoding GIF images2
Assert/Const¦
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*J
valueAB? B9Channels must be in (None, 0, 3) when decoding GIF images2
Assert/Assert/data_0
Assert/AssertAssertLogicalAnd:z:0Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 *
	summarize2
Assert/Assert„
	DecodeGif	DecodeGif-decodegif_tensorarrayv2read_tensorlistgetitem^Assert/Assert*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’2
	DecodeGif
IdentityIdentityDecodeGif:image:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identity"
identityIdentity:output:0*
_input_shapes
: "Æ*Ę
transform_signature®
4
img_raw)
inputs/F_img_raw:0’’’’’’’’’
.
label%
inputs/label:0	’’’’’’’’’[

img_raw_xfM
(map/TensorArrayV2Stack/TensorListStack:0’’’’’’’’’šŻdKM
label_xfA
*map_1/TensorArrayV2Stack/TensorListStack:0	’’’’’’’’’#tensorflow/serving/predict